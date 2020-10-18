<section class="companies shadow-inset">
    <div class="container">
        <h3 class="text-center pb-3">Trusted by New Zealand Companies</h3>
        <div class="row d-flex justify-content-center">
            <?php
            
            $args = array('post_type' => 'jumbotron-brand');
            // The Query
            $the_query = new WP_Query( $args );

            // The Loop
            while ( $the_query->have_posts() ) {
                $the_query->the_post();
                get_template_part('partials/content', 'jumbotron-brand');
            }

            /* Restore original Post Data */
            wp_reset_postdata();

            ?>
        </div>
    </div>
</section>