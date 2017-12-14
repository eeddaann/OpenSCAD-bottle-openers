basic_opener("edan");


module basic_opener(letter, size=50) {
    coin_radius = 9;
    coin_height = 2;
    bottle_body_height = size/2;
    bottle_body_radius = size/5;
    bottle_neck_height = size/2;
    bottle_neck_radius = size/15;
    padding = 2.5;
        
    difference() {
        group(){
        translate([0,0,bottle_body_height]) cylinder(h=bottle_neck_height, r1=bottle_body_radius, r2=bottle_neck_radius); // bottle neck
        translate([0,0,0]) cylinder(h=bottle_body_height, r=bottle_body_radius); // bottle body
        }
        translate([-bottle_body_radius,0,-padding/2]) cube([bottle_body_radius*2,bottle_body_radius*2,bottle_body_height+bottle_neck_height+padding]); // frame 
        translate([-bottle_body_radius+padding/2,-bottle_body_radius,bottle_body_height/2]) cube([2*bottle_body_radius-padding,2*bottle_body_radius-padding,10]);
        
    }
}
