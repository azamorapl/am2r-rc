/// ctrl_vibrate()
if (global.opxjoyvib && !instance_exists(oBigQuake)) {
    global.vibL = argument0;
    global.vibR = argument1;
    with (oVibrate) instance_destroy();
    o = instance_create(0, 0, oVibrate);
    o.alarm[0] = argument2;
}
