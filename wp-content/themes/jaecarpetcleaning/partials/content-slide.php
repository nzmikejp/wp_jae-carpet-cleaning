<?php 
    global $active_class;
    $link = get_field('url');
    print_r($link);
?>

<div class="carousel-item active">
    <img src="<?php the_field('background_image')?>" alt="">
    <div class="carousel-caption">
        <h3 class="slide-title animated fadeInDown"><?php the_title()?></h3>
        <div class="slide-text animated fadeIn"><?php the_content()?></div>
        <a href="<?php echo $link['url']?>" class="btn btn-md btn-red rounded-pill px-4 animated fadeInUp"><?php echo $link['title']?></a>
    </div>
</div>