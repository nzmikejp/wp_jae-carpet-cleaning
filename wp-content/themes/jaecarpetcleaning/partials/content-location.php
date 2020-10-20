<?php

    $phone = get_field('phone');
    $email = get_field('email');

    $terms = get_the_terms( get_the_ID(), 'type' );
    $classes = '';

    if($terms){
        foreach($terms as $term){
            $classes .= $term->slug . ' ';
        }
    }


?>


<div class="col-lg-4 col-md-6 col-12 mb-3 mix <?php echo $classes?>">
    <div class="location-box">
        <div class="location-content">
            <h4><?php the_title()?></h4>
            <a href="tel:<?php echo $phone['url']?>"><i class="fas fa-phone icon"></i><?php echo $phone['title']?></a>
            <a href="mailto:<?php echo $email['url']?>"><i class="far fa-envelope icon"></i><?php echo $email['title']?></a>
        </div>
    </div>
</div>