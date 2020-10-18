<div class="page-header-title">
    <h2 class="heading-title text-center"><?php the_title()?></h2>
</div>

<div class="row pb-5">
    <div class="col-12 col-md-7"><?php the_content()?></div>
    <div class="col-7 col-md-5 py-3 py-md-0 single-service-image">
        <img src="<?php the_field('photo')?>" alt=""/>
    </div>
</div>