<section class="location shadow-inset py-5">
    <div class="container">
        <div class="row px-3">
            <div class="col-md-12">
                <h3 class="text-center">JAE Branch Locations</h3>
                <div class="controls text-center wow fadeInUpQuick" data-wow-delay=".6s">
                    <a class="filter active btn btn-common mb-sm-2" data-filter="all">
                        All 
                    </a>

                    <?php
                
                        $terms = get_terms( 'type', array('hide_empty' => false));

                        foreach($terms as $term){
                            echo '<a class="filter btn btn-common mb-sm-2 mx-1" data-filter=".' . $term->slug .'">'. $term->name .'</a>';
                        }
                    
                    ?>

                </div>
            </div>
        </div>
        <hr>
    </div>

    <!-- Our locations -->
    <div id="location" class="container">
        <div class="row pt-4 wow fadeInUpQuick" data-wow-delay="0.8s">

            <?php

                $args = array('post_type' => 'location');
                // The Query
                $the_query = new WP_Query( $args );

                // The Loop
                while ( $the_query->have_posts() ) {
                    $the_query->the_post();
                    get_template_part('partials/content', 'location');
                }

                /* Restore original Post Data */
                wp_reset_postdata();

            ?>

        </div>
    </div>
</section>