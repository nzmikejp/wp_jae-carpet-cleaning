<?php get_header()?>

    <main>
        <?php get_template_part('slider')?>

        <section class="index">
            <div class="container">
                <?php 
                while ( have_posts() ) {
                    the_post(); 
                    get_template_part('partials/content', 'index');
                } // end while
                ?>        
            </div>
        </section>

        <?php get_template_part('services')?>

        <?php get_template_part('jumbotron-coverage')?>
        
        <?php get_template_part('jumbotron-brands')?>

    </main>

<?php get_footer()?>