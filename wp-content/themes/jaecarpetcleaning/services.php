<section class="services">
    <div class="container">
        <hr>
        <div class="row pt-4">

            <?php

            $args = array('post_type' => 'service');
            // The Query
            $the_query = new WP_Query( $args );

            // The Loop
            while ( $the_query->have_posts() ) {
                $the_query->the_post();
                get_template_part('partials/content', 'service');
            }

            /* Restore original Post Data */
            wp_reset_postdata();

            ?>
            
        </div>
    </div>
</section>