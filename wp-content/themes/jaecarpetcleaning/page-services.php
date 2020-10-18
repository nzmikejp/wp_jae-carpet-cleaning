<?php get_header()?>

    <main>

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
    </main>

<?php get_footer()?>