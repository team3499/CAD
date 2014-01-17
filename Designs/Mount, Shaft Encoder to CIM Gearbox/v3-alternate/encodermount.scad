// Charlie Waters
// Team 3499
// Shaft Encoder Mount


$fn = 50;


sqwidth = 48;
sqheight = 31;

edget = 2;
insetd = 4;

holesd = 31;
screwch = 10;
screwcw = 6;

function center() = sqwidth/2;
function edgeholed() = sqwidth/2-holesd/2;
function spacerh() = sqheight - insetd + 2;

difference(){
	union(){
		difference(){
			cube([sqwidth, sqwidth, sqheight]);
			translate([edget, edget, sqheight-insetd])
				cube([sqwidth-edget*2, sqwidth-edget*2, insetd]);
		}
		translate([center()-holesd/2, center()-holesd/2, 0]) cylinder(spacerh(), 3, 3);
		translate([center()-holesd/2, center()+holesd/2, 0]) cylinder(spacerh(), 3, 3);
		translate([center()+holesd/2, center()-holesd/2, 0]) cylinder(spacerh(), 3, 3);
		translate([center()+holesd/2, center()+holesd/2, 0]) cylinder(spacerh(), 3, 3);
	}

	translate([center(), center(), 0]){
		cylinder(40, 7, 7);
		cylinder(3, 12, 12);
	}

	translate([center()-holesd/2, center()-holesd/2, 0]) cylinder(sqheight, 1.5, 1.5);
	translate([center()-holesd/2, center()+holesd/2, 0]) cylinder(sqheight, 1.5, 1.5);
	translate([center()+holesd/2, center()-holesd/2, 0]) cylinder(sqheight, 1.5, 1.5);
	translate([center()+holesd/2, center()+holesd/2, 0]) cylinder(sqheight, 1.5, 1.5);

	translate([sqwidth-(edgeholed()+screwcw/2), edgeholed()-screwcw/2, 0]){
		cube([edgeholed()+screwcw/2+1, screwcw, screwch]);
	}
	translate([sqwidth-(edgeholed()+screwcw/2), edgeholed()-screwcw/2+holesd, 0]){
		cube([edgeholed()+screwcw/2, screwcw, screwch]);
	}
	translate([0, edgeholed()-screwcw/2, 0]){
		cube([edgeholed()+screwcw/2, screwcw, screwch]);
	}
	translate([0, edgeholed()-screwcw/2+holesd, 0]){
		cube([edgeholed()+screwcw/2, screwcw, screwch]);
	}


}

