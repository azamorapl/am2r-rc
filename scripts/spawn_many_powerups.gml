/// spawn_many_powerups(region_x, region_y, region__width, region_height)
repeat (20) instance_create(argument0 + random(argument2), argument1 + random(argument3), oHPickupBig);
if (global.maxmissiles > 0) {
    repeat (20) instance_create(argument0 + random(argument2), argument1 + random(argument3), oMPickup);
}
if (global.maxsmissiles > 0) {
    repeat (5) instance_create(argument0 + random(argument2), argument1 + random(argument3), oSMPickup);
}
