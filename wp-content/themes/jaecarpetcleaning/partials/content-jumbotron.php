<?php 

    $link = get_field('button')

?>

<h3 class="pb-3 text-center"><?php the_title()?></h3>
<div class="text-center"><?php the_content()?></div>
<a href="<?php echo $link['url']?>" class="btn btn-primary btn-blue rounded-pill mx-auto"><?php echo $link['title']?></a>