<?php
/*
 * Admin Settingspage for Custom Taxonomy Order.
 * Generated for each taxonomy.
 */


function customtaxorder_subpage() {
	global $sitepress;

	customtaxorder_update_settings();
	$options = customtaxorder_get_settings();
	$parent_ID = 0;

	$taxonomies = customtaxorder_get_taxonomies() ;

	if ( ! empty( $taxonomies ) ) {
		foreach ( $taxonomies as $taxonomy ) {
			$com_page = 'customtaxorder-'.$taxonomy->name;
			if ( !isset($options[$taxonomy->name]) ) {
				$options[$taxonomy->name] = 0; // default if not set in options yet
			}
			if ( $_GET['page'] == $com_page ) {

				// Set your custom capability through this filter.
				$custom_cap = apply_filters( 'customtaxorder_custom_cap', 'manage_categories' );

				// Set your finegrained capability for this taxonomy for this custom filter.
				$custom_cap_tax = apply_filters( 'customtaxorder_custom_cap_' . $taxonomy->name, $custom_cap );

				if ( function_exists('current_user_can') && ! current_user_can( $custom_cap_tax ) ) {
					die(esc_html__( 'Cheatin&#8217; uh?', 'custom-taxonomy-order-ne' ));
				}
			}
		}
	}

	?>
	<div class='wrap customtaxorder'>
		<div id="icon-customtaxorder"></div>

	<?php
	if ( $_GET['page'] == 'customtaxorder' ) {
		// Main admin page with just a set of links to the taxonomy pages.

		// Set your custom capability through this filter.
		$custom_cap = apply_filters( 'customtaxorder_custom_cap', 'manage_categories' );

		if ( function_exists('current_user_can') && ! current_user_can( $custom_cap ) ) {
			die(esc_html__( 'Cheatin&#8217; uh?', 'custom-taxonomy-order-ne' ));
		}

		?>
		<h1>Custom Taxonomy Order</h1>
		<div class="order-widget">
			<p><?php esc_html_e('The ordering of categories, tags and terms through a simple drag-and-drop interface.', 'custom-taxonomy-order-ne'); ?></p>
		<?php
		if ( ! empty( $taxonomies ) ) {
			echo '<h2>' . esc_html__('Taxonomies', 'custom-taxonomy-order-ne') . '</h2><ul>';
			$taxonomies = customtaxorder_sort_taxonomies( $taxonomies );
			echo '<li class="lineitem"><a href="' . admin_url( 'admin.php?page=customtaxorder-taxonomies' ) . '">' . esc_html__('Taxonomies', 'custom-taxonomy-order-ne') . '</a></li>
				';
			foreach ( $taxonomies as $taxonomy ) {
				echo '<li class="lineitem"><a href="' . admin_url( 'admin.php?page=customtaxorder-' . $taxonomy->name ) . '">' . $taxonomy->label . '</a> &nbsp;(' . $taxonomy->name . ')</li>
				';
			}
		}
		echo '</ul></div></div><!-- #wrap -->';
		return;
	}

	$settings = ''; // The input and text for the taxonomy that's shown.
	if ( ! empty( $taxonomies ) ) {
		foreach ( $taxonomies as $taxonomy ) {
			$com_page = 'customtaxorder-'.$taxonomy->name;
			if ( ! isset($options[$taxonomy->name]) ) {
				$options[$taxonomy->name] = 0; // default if not set in options yet
			}
			if ( $_GET['page'] == $com_page ) {
				$settings .= '<label><input type="radio" name="customtaxorder_settings[' . $taxonomy->name . ']" value="0" ' . checked('0', $options[$taxonomy->name], false) . ' /> ' . esc_html__('Order by ID (default).', 'custom-taxonomy-order-ne') . '</label><br />
					';
				$settings .= '<label><input type="radio" name="customtaxorder_settings[' . $taxonomy->name . ']" value="1" ' . checked('1', $options[$taxonomy->name], false) . ' /> ' . esc_html__('Custom Order as defined above.', 'custom-taxonomy-order-ne') . '</label><br />
					';
				$settings .= '<label><input type="radio" name="customtaxorder_settings[' . $taxonomy->name . ']" value="2" ' . checked('2', $options[$taxonomy->name], false) . ' /> ' . esc_html__('Alphabetical Order by name.', 'custom-taxonomy-order-ne') . '</label><br />
					';
				$settings .= '<label><input type="radio" name="customtaxorder_settings[' . $taxonomy->name . ']" value="3" ' . checked('3', $options[$taxonomy->name], false) . ' /> ' . esc_html__('Alphabetical Order by slug.', 'custom-taxonomy-order-ne') . '</label><br />
					';
				$tax_label = $taxonomy->label;
				$tax = $taxonomy->name;
			} else {
				if ( ! isset($options[$taxonomy->name]) ) {
					$options[$taxonomy->name] = 0; // default if not set in options yet
				}
				$settings .= '<input name="customtaxorder_settings[' . $taxonomy->name . ']" type="hidden" value="' . $options[$taxonomy->name] . '" />';
			}
		}
	}

	$parent_ID_order = 0;
	if (isset($_POST['go-sub-posts'])) {
		$parent_ID = $_POST['sub-posts'];
	}
	elseif (isset($_POST['hidden-parent-id'])) {
		$parent_term = get_term($_POST['hidden-parent-id'], $tax);
		$parent_ID = $_POST['hidden-parent-id'];
		if ( is_object($parent_term) && isset($parent_term->term_order) ) {
			$parent_ID_order = $parent_term->term_order;
		}
	}
	if (isset($_POST['return-sub-posts'])) {
		$parent_term = get_term($_POST['hidden-parent-id'], $tax);
		$parent_ID = $parent_term->parent;
	}
	if (isset($_POST['order-submit'])) {
		customtaxorder_update_order();
	} ?>

	<h1><?php echo esc_html__('Order ', 'custom-taxonomy-order-ne') . $tax_label; ?></h1>
	<form name="custom-order-form" method="post" action=""><?php

		/* Nonce */
		$nonce = wp_create_nonce( 'custom-taxonomy-order-ne-nonce' );
		echo '<input type="hidden" id="custom-taxonomy-order-ne-nonce" name="custom-taxonomy-order-ne-nonce" value="' . $nonce . '" />';

		// Remove filters for WPML and add one filter of our own.
		$active_plugins = get_option('active_plugins');
		if ( in_array( 'sitepress-multilingual-cms/sitepress.php', $active_plugins ) ) {
			remove_filter( 'terms_clauses', array( $sitepress, 'terms_clauses' ), 10 );
			remove_filter( 'get_terms', array( $sitepress, 'get_terms_filter' ), 10 );
			remove_filter( 'get_terms_args', array( $sitepress, 'get_terms_args_filter' ), 10, 2 ); // Needed to get the correct list of sub-terms.
			remove_filter( "pre_option_{$tax}_children", array( $sitepress, 'pre_option_tax_children' ), 10, 0 );
			add_filter( "pre_option_{$tax}_children", 'customtaxorder_pre_option_tax_children', 99, 0 ); // Needed to fill the dropdown of sub-terms.
		}

		$args = array(
			'orderby'    => 'term_order',
			'order'      => 'ASC',
			'hide_empty' => false,
			'parent'     => $parent_ID,
		);
		$terms = get_terms( $tax, $args );
		if ( $terms ) {
			usort($terms, 'customtax_cmp');
			?>
			<div id="poststuff" class="metabox-holder">
				<div class="widget order-widget">
					<h2 class="widget-top"><?php esc_html_e( $tax_label ) ?> | <small><?php esc_html_e('Order the terms by dragging and dropping them into the desired order.', 'custom-taxonomy-order-ne') ?></small></h2>
					<div class="misc-pub-section">
						<ul id="custom-order-list">
							<?php foreach ( $terms as $term ) { ?>
							<li id="id_<?php echo $term->term_id; ?>" data-slug="<?php echo $term->slug; ?>" class="lineitem"><?php echo $term->name; ?></li>
							<?php } ?>
						</ul>
					</div>
					<div class="misc-pub-section misc-pub-section-last">
						<?php if ($parent_ID != 0) { ?>
						<div id="publishing-action-return-sub-posts">
							<input type="submit" class="button" id="return-sub-posts" name="return-sub-posts" value="<?php esc_html_e('Return to Parent', 'custom-taxonomy-order-ne'); ?>" />
						</div>
						<?php } ?>
						<div id="publishing-action">
							<img src="<?php echo esc_url( admin_url( 'images/wpspin_light.gif' ) ); ?>" id="custom-loading" style="display:none" alt="" />
							<input type="submit" name="order-submit" id="order-submit" class="button-primary" value="<?php esc_html_e('Update Order', 'custom-taxonomy-order-ne') ?>" />
							<input type="submit" name="order-alpha"  id="order-alpha" class="button" value="<?php esc_html_e('Sort Alphabetical', 'custom-taxonomy-order-ne') ?>" />
							<input type="submit" name="order-slug"   id="order-slug" class="button" value="<?php esc_html_e('Sort on Slug', 'custom-taxonomy-order-ne') ?>" />
							<?php do_action('custom_taxonomy_order_ne_settings_buttons'); ?>
						</div>
						<div class="clear"></div>
					</div>
					<input type="hidden" id="hidden-custom-order"    name="hidden-custom-order" />
					<input type="hidden" id="hidden-parent-id"       name="hidden-parent-id" value="<?php echo $parent_ID; ?>" />
					<input type="hidden" id="hidden-parent-id-order" name="hidden-parent-id-order" value="<?php echo $parent_ID_order; ?>" />
				</div>
				<?php
				$dropdown = customtaxorder_sub_query( $terms, $tax );
				if( ! empty($dropdown) ) { ?>
				<div class="widget order-widget">
					<h2 class="widget-top"><?php print(__('Sub-', 'custom-taxonomy-order-ne') . $tax_label); ?> | <small><?php esc_html_e('Choose a term from the dropdown to order its sub-terms.', 'custom-taxonomy-order-ne'); ?></small></h2>
					<div class="misc-pub-section misc-pub-section-last">
						<select id="sub-posts" name="sub-posts">
							<?php echo $dropdown; ?>
						</select>
						<input type="submit" name="go-sub-posts" class="button" id="go-sub-posts" value="<?php esc_html_e('Order Sub-terms', 'custom-taxonomy-order-ne') ?>" />
					</div>
				</div>
				<?php } ?>
			</div>
		<?php } else { ?>
			<p><?php esc_html_e('No terms found', 'custom-taxonomy-order-ne'); ?></p>
		<?php } ?>
	</form>
	<form method="post" action="options.php" class="clear">
		<?php settings_fields('customtaxorder_settings'); ?>
		<div class="metabox-holder">
			<div class="order-widget">
				<h2 class="widget-top"><?php esc_html_e( 'Settings', 'custom-taxonomy-order-ne' ); ?></h2>
				<table class="form-table">
					<tr valign="top">
						<th scope="row"><?php esc_html_e('Auto-Sort Queries of this Taxonomy', 'custom-taxonomy-order-ne') ?></th>
					</tr>
					<tr valign="top">
						<td><?php echo $settings; ?></td>
					</tr>
				</table>
				<input type="hidden" name="customtaxorder_settings[update]" value="Updated" />
				<p class="submit">
					<input type="submit" class="button-primary" value="<?php esc_attr_e('Save Settings', 'custom-taxonomy-order-ne') ?>" />
				</p>
			</div>
		</div>
	</form>
</div>

<?php
}


/*
 * Called from customtaxorder_subpage().
 */
function customtaxorder_update_settings() {
	$options = customtaxorder_get_settings();
	if ( isset($options['update']) ) {
		echo '<div class="updated fade notice is-dismissible" id="message"><p>' . esc_html__('Custom Taxonomy Order settings', 'custom-taxonomy-order-ne') . ' ' . $options['update'] . '</p></div>';
		unset($options['update']);
		update_option('customtaxorder_settings', $options);
	}
}


/*
 * customtaxorder_update_order
 * Function to update the database with the submitted order
 */
function customtaxorder_update_order() {

	/* Check Nonce */
	$verified = false;
	if ( isset($_POST['custom-taxonomy-order-ne-nonce']) ) {
		$verified = wp_verify_nonce( $_POST['custom-taxonomy-order-ne-nonce'], 'custom-taxonomy-order-ne-nonce' );
	}
	if ( $verified == false ) {
		// Nonce is invalid.
		echo '<div id="message" class="error fade notice is-dismissible"><p>' . esc_html__('The Nonce did not validate. Please try again.', 'custom-taxonomy-order-ne') . '</p></div>';
		return;
	}

	if (isset($_POST['hidden-custom-order']) && $_POST['hidden-custom-order'] != "") {
		global $wpdb;
		$parent_ID_order = 0;
		if ( isset($_POST['hidden-parent-id-order']) && $_POST['hidden-parent-id-order'] > 0 ) {
			$parent_ID_order = (int) $_POST['hidden-parent-id-order'] + 1;
		}
		$new_order = $_POST['hidden-custom-order'];
		$IDs = explode(",", $new_order);
		$ids = Array();
		$result = count($IDs);
		for ( $i = 0; $i < $result; $i++ ) {
			$term_id = (int) str_replace("id_", "", $IDs[$i]);
			$term_order = $i + $parent_ID_order;

			customtaxorder_set_db_term_order( $term_id, $term_order );

			$ids[] = $term_id;
		}
		echo '<div id="message" class="updated fade notice is-dismissible"><p>'. esc_html__('Order updated successfully.', 'custom-taxonomy-order-ne').'</p></div>';
		do_action('customtaxorder_update_order', $ids);
	} else {
		echo '<div id="message" class="error fade notice is-dismissible"><p>'. esc_html__('An error occured, order has not been saved.', 'custom-taxonomy-order-ne').'</p></div>';
	}
}


/*
 * Function to give dropdown options for the list of sub-terms.
 */
function customtaxorder_sub_query( $terms, $tax ) {
	$options = '';
	if ( isset( $terms ) && is_array( $terms ) ) {
		foreach ( $terms as $term ) {
			$subterms = get_term_children( $term->term_id, $tax );
			if ( $subterms ) {
				$options .= '<option value="' . $term->term_id . '">' . $term->name . '</option>';
			}
		}
	}
	return $options;
}


/*
 * Compatibility with WPML and list of term children for the list of sub-terms.
 *
 * @since 3.2.0
 */
function customtaxorder_pre_option_tax_children() {

	$taxonomy     = str_replace( array( 'pre_option_', '_children' ), '', current_filter() );
	$option_key   = "{$taxonomy}_children_all";
	$tax_children = get_option( $option_key, false );

	return ! empty( $tax_children ) ? $tax_children : false;

}
