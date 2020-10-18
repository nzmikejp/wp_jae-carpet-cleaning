<section class="coverage shadow-inset">
    <div class="container">
        <div class="row">
            <div class="col d-flex flex-column px-3">
                <?php
    
                $args = array('post_type' => 'jumbotron');
                // The Query
                $the_query = new WP_Query( $args );
    
                // The Loop
                while ( $the_query->have_posts() ) {
                    $the_query->the_post();
                    get_template_part('partials/content', 'jumbotron');
                }
    
                /* Restore original Post Data */
                wp_reset_postdata();
    
                ?>
            </div>
            
        </div>
    </div>
</section>