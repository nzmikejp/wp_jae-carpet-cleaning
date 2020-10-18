<?php get_header()?>

    <main>
      <section class="service">
        <div class="container">
            <?php 
              while ( have_posts() ) {
                  the_post(); 
                  get_template_part('partials/content', 'single-service');
              } // end while
            ?>        
        </div>
      </section>
    </main>

<?php get_footer()?>