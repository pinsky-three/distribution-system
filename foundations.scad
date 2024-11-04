module lattice_holes(h_h = 1.5, h_w = .3, d_h = 3, d_w = 3, n = 16, m = 9) {
    for (x =[0:n], y =[0:m]) {
        translate([x*d_w, y*d_h, -h_w/2]) cube([h_w, h_h, h_w*2]);
    }
}


module lattice(thickness = .3) {
    n = 30;
    m = 10;
    
    h_h = 3;
    h_w = thickness;
    
    d_h = 5;
    d_w = 3;
    
    width = ((n+1) * d_w) + h_w;
    height = ((m+1) * d_h) + h_h;

    pad_offset = 3;
    
    difference() {
        cube([width+pad_offset, height+pad_offset, thickness]);

        translate([(pad_offset+d_w)/2, (pad_offset+d_h)/2]) lattice_holes(
            h_h, h_w, d_h, d_w, n, m
        );
    }
};


module support(thickness = .3) {
    n = 30;
    m = 10;
    
    h_h = 3;
    h_w = thickness;
    
    d_h = 5;
    d_w = 3;
    
    width = ((n+1) * d_w) + h_w;
    height = ((m+1) * d_h) + h_h;

    pad_offset = 3;
    alpha = 15;

    linear_extrude(height=thickness) 
        polygon([
            [0,0],
            [0, (height+pad_offset)*cos(alpha)],
            [(height+pad_offset)*sin(alpha), 0]
        ]);


}

rotate([90,0,0]) {
    thickness = .5;
    translate([0, 0, 15.5]) rotate([-15,0,0]) lattice(thickness);
    translate([3.5,0,0]) rotate([0,-90,0]) support(thickness);
    translate([90+3.5,0,0]) rotate([0,-90,0]) support(thickness);
}


