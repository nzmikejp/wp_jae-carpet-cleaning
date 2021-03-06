<?php

function register_resource() {
    register_nav_menu('main-menu', 'Main Menu');

    //--- Slider ---//
    $args = array(
        'public'    => true,
        'label'     => 'Slider',
        'menu_icon' => 'dashicons-format-gallery'
    );
    register_post_type( 'slide', $args );
    
    //--- Services ---//
    $args = array(
        'public'    => true,
        'label'     => 'Services',
        'menu_icon' => 'dashicons-awards'
    );
    register_post_type( 'service', $args );
    
    //--- Jumbotron Coverage ---//
    $args = array(
        'public'    => true,
        'label'     => 'Hero Message',
        'menu_icon' => 'dashicons-awards'
    );
    register_post_type( 'jumbotron', $args );
   
    //--- Jumbotron Brands ---//
    $args = array(
        'public'    => true,
        'label'     => 'Hero Brands',
        'menu_icon' => 'dashicons-awards'
    );
    register_post_type( 'jumbotron-brand', $args );
    
    //--- Locations ---//
    $args = array(
        'public'    => true,
        'label'     => 'Locations',
        'menu_icon' => 'dashicons-admin-site-alt3'
    );
    register_post_type( 'location', $args );

    //--- Custom Taxonomy ---//
    $args = array(
        'label'        => 'Type',
        'public'       => true,
        'hierarchical' => true,
        'show_in_nav_menus' => true,
    );
    register_taxonomy( 'type', 'location', $args );

}
add_action( 'init', 'register_resource' );

function add_class_to_li( $classes, $item, $args ) {
 
    $classes[] = 'nav-item';
    return $classes;
}
add_filter( 'nav_menu_css_class' , 'add_class_to_li' , 10, 4 );

function add_class_to_anchors( $atts ) {
    $atts['class'] = 'nav-link';

    if($atts['title'] == 'Phone link'){
        $atts['class'] = 'btn btn-red rounded-pill';
    }
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'add_class_to_anchors', 10 );


?>