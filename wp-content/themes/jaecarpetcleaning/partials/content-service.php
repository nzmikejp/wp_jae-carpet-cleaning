<div class="col-lg-4 col-md-6 col-xs-12">
    <div class="service-box d-flex">
        <div class="service-icon">
            <img src="<?php the_field('icon')?>" alt="">
        </div>
        <div class="service-content">
            <h4><a href="<?php the_permalink()?>"><?php the_title()?></a></h4>
            <p><?php the_field('summary')?></p>
            <hr>
            <a href="<?php the_permalink()?>">Read More</a>
        </div>
    </div>
</div>