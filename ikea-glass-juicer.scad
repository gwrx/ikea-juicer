
glass_outer_diameter = 87;
glass_inner_diameter = 80;

glass_diameter = ((glass_outer_diameter - glass_inner_diameter) / 2) + glass_inner_diameter;
radius = glass_diameter/2;
fn = 50;

module juicer() {
difference() {
union() {
	difference() {
		rotate([0,0,22.5])
		for (i = [0:45:360]) {
		rotate([0,0,i]) scale([1,0.4,1.5]) sphere(r=radius-10, $fn=fn);

		}


	translate([-glass_diameter/2,-glass_diameter/2,-101]) cube([glass_diameter,glass_diameter,100]);

	}
	difference() {
		translate([0,0,-5]) cylinder(r1=radius+5, r2=radius+5, h=5, $fn=fn);
		for (i = [0:7]) {
			rotate (i*360 / 8, [0,0,1]) translate([radius-12,0,-6]) cylinder(r1=6, r2=1.5, h=7, $fn=fn);
			//rotate (i*360 / 8, [0,0,1]) translate([radius-20,-1,-6]) cube([14,2,18]);
		}
	difference() {
		translate([0,0,-6]) cylinder(r1=radius+2.5, r2=radius+2.5, h= 3, $fn=fn);
		translate([0,0,-7]) cylinder(r1=radius-2.5, r2=radius-2.5, h=7, $fn=fn);
	}
	}

	difference() {
		translate([0,0,0]) cylinder(r1=radius+5, r2=radius+4, h= 15, $fn=fn);
		translate([0,0,-1]) cylinder(r1=radius-8, r2=radius+2, h=17, $fn=fn);
	}



}

		rotate([0,0,22.5])
		for (i = [0:45:360]) {
		rotate([0,0,i]) scale([0.9,0.3,1.4]) sphere(r=radius-10, $fn=fn);

		}}

}

juicer();


