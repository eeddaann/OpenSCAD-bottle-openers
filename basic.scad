

basic_opener("edan");


module basic_opener(letter, size=50) {
    coin_radius = 9;
    coin_height = 2;
    padding = 2.5;
    difference() {
        translate([0,0,size/4]) cube([size/2,size,size/12], center=true); // cube
        translate([-size/4+padding,-size/2+padding,0]) cube([size/2.4,size/2,size]); // frame 
        translate([-size/55,size/40,size/6+padding]) cylinder(h=size/20, r=coin_radius); // coin hole
        translate([0,size/3,size/6]) {
            linear_extrude(height=size, convexity=4)
                text(letter, 
                     size=size*0.1,
                     font="Bitstream Vera Sans",
                     halign="center",
                     valign="center");
        }
    }
}
