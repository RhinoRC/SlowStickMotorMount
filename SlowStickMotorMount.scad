
wall = 1.25;
id = 9.9;
od = id + (2*wall);
length = 20;
$fn = 100;

mount_space = 18.65;	//distance between motor mount holes.

//Rod Mount
difference(){
	cube([od,od,length],center=true);
	cube([id,id,length],center=true);
	rotate([90,0,0]){
		cylinder(h=od, r=1.5, center=true);
	}
}

//Motor Mount
translate([0,-5,(15+length)/2]){
	//difference(){
	//	cylinder(h=15, r=12.5+(2*wall), center=true);
	//	cylinder(h=15, r=12.5, center=true);
	//}

	difference(){
		translate([0,0,-15/2]){
			cylinder(h=2*wall, r=12.5+(2*wall), center=true);
		}
		translate([0,0,-15/2]){
			cylinder(h=2*wall, r=3.5, center=true );
		}
		translate([mount_space/2,0,-15/2]){
			cylinder(h=2*wall, r=1.5, center=true);
		}
		translate([-mount_space/2,0,-15/2]){
			cylinder(h=2*wall, r=1.5, center=true);
		}
	}
	
}