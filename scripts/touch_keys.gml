/// touch_keys()
ctrl_Left = 0;
ctrl_Right = 0;
ctrl_Up = 0;
ctrl_Down = 0;
ctrl_A = 0;
ctrl_B = 0;
ctrl_X = 0;
ctrl_L = 0;
ctrl_R = 0;
ctrl_Select = 0;
ctrl_Start = 0;
ctrl_L2 = 0;
ctrl_R2 = 0;
ctrl_Exit = 0;
ctrl_Menu1 = 0;
ctrl_Menu2 = 0;
walk_zone = 0;
if (ctrl_Left == 0 && ctrl_Right == 0 && !keyboard_check(global.opkeybtn_right) && keyboard_check(global.opkeybtn_left)) {
    ctrl_Left = 1;
    global.controltype = 0;
}
if (ctrl_Left == 0 && ctrl_Right == 0 && !keyboard_check(global.opkeybtn_left) && keyboard_check(global.opkeybtn_right)) {
    ctrl_Right = 1;
    global.controltype = 0;
}
if (ctrl_Up == 0 && ctrl_Down == 0 && !keyboard_check(global.opkeybtn_down) && keyboard_check(global.opkeybtn_up)) {
    ctrl_Up = 1;
    global.controltype = 0;
}
if (ctrl_Up == 0 && ctrl_Down == 0 && !keyboard_check(global.opkeybtn_up) && keyboard_check(global.opkeybtn_down)) {
    ctrl_Down = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_a)) {
    ctrl_A = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_b)) {
    ctrl_B = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_x)) {
    ctrl_X = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_l)) {
    ctrl_L = 1;
    global.controltype = 0;
}
if (global.opaimstyle == true && keyboard_check(global.opkeybtn_l2)) {
    ctrl_L2 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_r)) {
    ctrl_R = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_r2)) {
    ctrl_R2 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_select)) {
    ctrl_Select = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_start)) {
    ctrl_Start = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_exit)) {
    ctrl_Exit = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_menu1)) {
    ctrl_Menu1 = 1;
    global.controltype = 0;
}
if (keyboard_check(global.opkeybtn_menu2)) {
    ctrl_Menu2 = 1;
    global.controltype = 0;
}
xjoyx = oTouchControls.joyx;
xjoyy = oTouchControls.joyy;
if (is_walkzone(xjoyx, xjoyy, 2)) walk_zone = 1;
if (is_past_deadzone(xjoyx, xjoyy, 1)) {
    if (ctrl_Left == 0 && ctrl_Right == 0 && xjoyx < -(global.opxjoydz / 200)) {
        ctrl_Left = -xjoyx;
        global.controltype = 2;
    }
    if (ctrl_Left == 0 && ctrl_Right == 0 && xjoyx > global.opxjoydz / 200) {
        ctrl_Right = xjoyx;
        global.controltype = 2;
    }
    if (ctrl_Up == 0 && ctrl_Down == 0 && xjoyy < -(global.opxjoydz / 200)) {
        ctrl_Up = 1;
        global.controltype = 2;
    }
    if (ctrl_Up == 0 && ctrl_Down == 0 && xjoyy > global.opxjoydz / 200) {
        ctrl_Down = 1;
        global.controltype = 2;
    }
}
