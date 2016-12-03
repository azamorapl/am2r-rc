/// remap_duplicate_joybtn(index)
if (global.opjoybtn_a == argument0) {
    global.opjoybtn_a = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_b == argument0) {
    global.opjoybtn_b = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_l == argument0) {
    global.opjoybtn_l = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_l2 == argument0) {
    global.opjoybtn_l2 = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_r2 == argument0) {
    global.opjoybtn_r2 = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_x == argument0) {
    global.opjoybtn_x = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_r == argument0) {
    global.opjoybtn_r = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_sel == argument0) {
    global.opjoybtn_sel = get_control_joyaxisbtn(global.curropt);
} else if (global.opjoybtn_str == argument0) {
    global.opjoybtn_str = get_control_joyaxisbtn(global.curropt);
}
