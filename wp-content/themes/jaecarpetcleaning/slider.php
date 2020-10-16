<section class="slider shadow">
            <div id="content pb-0">
                <div id="sliders">
                    <div class="full-width">
                        <div id="light-slider" class="carousel slide">
                            <div id="carousel-area">
                                <div id="carousel-slider" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-slider" data-slide-to="1"></li>
                                    <li data-target="#carousel-slider" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner" role="listbox">

                                        <?php

                                            $args = array('post_type' => 'slide');
                                            // The Query
                                            $the_query = new WP_Query( $args );
                                            
                                            global $active_class;
                                            $active_class = 'active';

                                            // The Loop
                                            while ( $the_query->have_posts() ) {
                                                $the_query->the_post();
                                                get_template_part('partials/content', 'slide');

                                                $active_class = '';
                                            }

                                            /* Restore original Post Data */
                                            wp_reset_postdata();

                                        ?>
                                
                                    </div>
                                    <a class="carousel-control-prev" href="#carousel-slider" role="button" data-slide="prev">
                                    <span class="carousel-control carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carousel-slider" role="button" data-slide="next">
                                    <span class="carousel-control carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>