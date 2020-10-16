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
    </main>

<?php get_footer()?>