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
    </main>

<?php get_footer()?>