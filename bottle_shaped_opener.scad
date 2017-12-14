basic_opener("edan");


module basic_opener(letter, size=50) {
    coin_radius = 9;
    coin_height = 2;
    bottle_cap_height = size/50;
    bottle_cap_radius = size/15;
    bottle_neck_height = size/2;
    bottle_neck_radius = size/15;
    bottle_body_height = size/2;
    bottle_body_radius = size/5;
    bottle_base_height = size/25;
    bottle_base_radius = size/5;
    
    bottle_height = bottle_cap_height + bottle_neck_height + bottle_body_height + bottle_base_height;
    bottle_radius = bottle_body_radius;
    
    padding = 2.5;
        
    difference() {
        group(){
        translate([0,0,bottle_height]) cylinder(h=bottle_cap_height, r=bottle_neck_radius+padding/2); // bottle cap
        translate([0,0,bottle_height-bottle_cap_height]) cylinder(h=bottle_cap_height, r1=bottle_cap_radius, r2=bottle_neck_radius+padding/2); // bottle cap
        translate([0,0,bottle_body_height+bottle_base_height]) cylinder(h=bottle_neck_height, r1=bottle_body_radius, r2=bottle_neck_radius); // bottle neck
        translate([0,0,bottle_base_height]) cylinder(h=bottle_body_height, r=bottle_body_radius); // bottle body
        translate([0,0,0]) cylinder(h=bottle_base_height, r1=bottle_cap_radius*2, r2=bottle_body_radius); // bottle base
        }
        translate([-bottle_body_radius/2,-bottle_body_radius/2-padding/2,bottle_body_height-bottle_base_height-padding]) cube([10,coin_height,coin_radius]); // coin hole
        translate([-bottle_body_radius,0,-padding/2]) cube([bottle_body_radius*2,bottle_body_radius*2,bottle_height+padding]); // divide to half
        translate([-bottle_body_radius+padding/2,-bottle_body_radius,bottle_body_height/5]) cube([2*bottle_body_radius-padding,2*bottle_body_radius-padding,bottle_body_height*0.7]); // frame
        
        
    }
}