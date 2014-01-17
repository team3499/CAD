// Shaft Encoder Mount
// Team 3499 -- River's Edge Robotics
// Ethan S
// Version 3

$fn = 50;



height = in2mm(1)+8;

width = 48.625;
function center() = width/2;

function bdmtoffset() = (width - 31)/2;


*import("/home/ethan/Desktop/ShaftEncoder.stl");

function in2mm(size) = size * 2.54 * 10;

difference() {
  cube([48.625, 48.625, in2mm(1)+8]);
  

  translate ([center(), center(), 0]){
    cylinder(height, in2mm(.65)/2, in2mm(.65)/2);
  }

  translate ([center(), center(), 0]){
    cylinder(in2mm(.15), in2mm(1)/2, in2mm(1)/2);
  }

  // depression for board
  translate([center(), center(), height-2.5]){
    cube([42.5, 42.5, 5], center = true);
  }

  translate([bdmtoffset(), bdmtoffset(), 0]){
    cylinder(height, 3/2, 3/2);
  }
  translate([width - bdmtoffset(), bdmtoffset(), 0]){
    cylinder(height, 3/2, 3/2);
  }
  translate([bdmtoffset(), width - bdmtoffset(), 0]){
    cylinder(height, 3/2, 3/2);
  }
  translate([width - bdmtoffset(), width - bdmtoffset(), 0]){
    cylinder(height, 3/2, 3/2);
  }

  // Depression for wires (12 in 7 wide)
  // (width - 42.5) /2 + 8
  translate([center(), (width - 42.5) /2 + 8, height-5-2]){
    cube([18, 8, 4], center = true);
  }

  // Mounting (to gearbox) holes.
  translate([center() - 38/2, center()+5, 0]){
    cylinder(height, 4.5/2, 4.5/2);
    translate([0, 0, height-10]){
      cylinder(10, 7.5/2, 7.5/2);
    }
  }

  // Mounting (to gearbox) holes.
  translate([center() + 38/2, center()+5, 0]){
    cylinder(height, 4.5/2, 4.5/2);
    translate([0, 0, height-10]){
      cylinder(10, 7.5/2, 7.5/2);
    }
  }

  // 15mm tall (4-40 nut is 5mm)
  translate([0, width - bdmtoffset() - 2.5, 0]){
    cube([13, 5, 15]);
  }
  // 15mm tall (4-40 nut is 5mm)
  translate([0, bdmtoffset() - 2.5, 0]){
    cube([13, 5, 15]);
  }
  // 15mm tall (4-40 nut is 5mm)
  translate([width - 13, width - bdmtoffset() - 2.5, 0]){
    cube([13, 5, 15]);
  }
  // 15mm tall (4-40 nut is 5mm)
  translate([width - 13, bdmtoffset() - 2.5, 0]){
    cube([13, 5, 15]);
  }
}


translate([bdmtoffset(), bdmtoffset(), height-5]){
  difference(){
    cylinder(5-3, 6/2, 6/2);

    cylinder(5, 3/2, 3/2);
  }
}
translate([width - bdmtoffset(), bdmtoffset(), height-5]){
  difference(){
    cylinder(5-3, 6/2, 6/2);

    cylinder(5, 3/2, 3/2);
  }
}
translate([bdmtoffset(), width - bdmtoffset(), height-5]){
  difference(){
    cylinder(5-3, 6/2, 6/2);

    cylinder(5, 3/2, 3/2);
  }
}
translate([width - bdmtoffset(), width - bdmtoffset(), height-5]){
  difference(){
    cylinder(5-3, 6/2, 6/2);

    cylinder(5, 3/2, 3/2);
  }
}

