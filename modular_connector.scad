base_height = 5.5;
base_depth = 21.0;
base_width = 11.5;
cube([base_width, base_depth, base_height]);

top_height = 1.0;
top_depth = 20.0;
top_width = base_width;
translate([0, 1, base_height]) {
    cube([top_width, top_depth, top_height]);
}

bottom_height = 1.5;
bottom_depth = 8.0;
bottom_width = base_width;
translate([0, base_depth - bottom_depth, -bottom_height]) {
    cube([bottom_width, bottom_depth, bottom_height]);
}

clipbase_height = 2.0;
clipbase_depth = 3.0;
clipbase_width = 6.0;
clapbase_xoff = base_width/2 - clipbase_width/2;
translate([clapbase_xoff, -1, base_height]) {
    cube([clipbase_width, clipbase_depth, clipbase_height]);
}

clip_height = 0.5;
clip_depth = 13.0;
clip_width = 3.25;
clip_xoff = base_width/2 - clip_width/2;
clip_zoff = base_height + clipbase_height - clip_height;
translate([clip_xoff, 2, clip_zoff]) {
    rotate([10, 0, 0]) {
        cube([clip_width, clip_depth, clip_height]);
    }
}
