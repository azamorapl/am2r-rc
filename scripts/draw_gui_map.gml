/// draw_gui_map(x, y)
draw_background(bgGUIMapBG, argument0, argument1 + 4);
if (m1 != "0") draw_mapblock(argument0 + 16, argument1 + 12, string_char_at(m1, 1), string_char_at(m1, 2), string_char_at(m1, 3), string_char_at(m1, 4), string_char_at(m1, 5), string_char_at(m1, 6), dm1, string_char_at(m1, 7));
if (m2 != "0") draw_mapblock(argument0, argument1 + 4, string_char_at(m2, 1), string_char_at(m2, 2), string_char_at(m2, 3), string_char_at(m2, 4), string_char_at(m2, 5), string_char_at(m2, 6), dm2, string_char_at(m2, 7));
if (m3 != "0") draw_mapblock(argument0 + 8, argument1 + 4, string_char_at(m3, 1), string_char_at(m3, 2), string_char_at(m3, 3), string_char_at(m3, 4), string_char_at(m3, 5), string_char_at(m3, 6), dm3, string_char_at(m3, 7));
if (m4 != "0") draw_mapblock(argument0 + 16, argument1 + 4, string_char_at(m4, 1), string_char_at(m4, 2), string_char_at(m4, 3), string_char_at(m4, 4), string_char_at(m4, 5), string_char_at(m4, 6), dm4, string_char_at(m4, 7));
if (m5 != "0") draw_mapblock(argument0 + 24, argument1 + 4, string_char_at(m5, 1), string_char_at(m5, 2), string_char_at(m5, 3), string_char_at(m5, 4), string_char_at(m5, 5), string_char_at(m5, 6), dm5, string_char_at(m5, 7));
if (m6 != "0") draw_mapblock(argument0 + 32, argument1 + 4, string_char_at(m6, 1), string_char_at(m6, 2), string_char_at(m6, 3), string_char_at(m6, 4), string_char_at(m6, 5), string_char_at(m6, 6), dm6, string_char_at(m6, 7));
if (m7 != "0") draw_mapblock(argument0, argument1 + 12, string_char_at(m7, 1), string_char_at(m7, 2), string_char_at(m7, 3), string_char_at(m7, 4), string_char_at(m7, 5), string_char_at(m7, 6), dm7, string_char_at(m7, 7));
if (m8 != "0") draw_mapblock(argument0 + 8, argument1 + 12, string_char_at(m8, 1), string_char_at(m8, 2), string_char_at(m8, 3), string_char_at(m8, 4), string_char_at(m8, 5), string_char_at(m8, 6), dm8, string_char_at(m8, 7));
if (m9 != "0") draw_mapblock(argument0 + 24, argument1 + 12, string_char_at(m9, 1), string_char_at(m9, 2), string_char_at(m9, 3), string_char_at(m9, 4), string_char_at(m9, 5), string_char_at(m9, 6), dm9, string_char_at(m9, 7));
if (m10 != "0") draw_mapblock(argument0 + 32, argument1 + 12, string_char_at(m10, 1), string_char_at(m10, 2), string_char_at(m10, 3), string_char_at(m10, 4), string_char_at(m10, 5), string_char_at(m10, 6), dm10, string_char_at(m10, 7));
if (m11 != "0") draw_mapblock(argument0, argument1 + 20, string_char_at(m11, 1), string_char_at(m11, 2), string_char_at(m11, 3), string_char_at(m11, 4), string_char_at(m11, 5), string_char_at(m11, 6), dm11, string_char_at(m11, 7));
if (m12 != "0") draw_mapblock(argument0 + 8, argument1 + 20, string_char_at(m12, 1), string_char_at(m12, 2), string_char_at(m12, 3), string_char_at(m12, 4), string_char_at(m12, 5), string_char_at(m12, 6), dm12, string_char_at(m12, 7));
if (m13 != "0") draw_mapblock(argument0 + 16, argument1 + 20, string_char_at(m13, 1), string_char_at(m13, 2), string_char_at(m13, 3), string_char_at(m13, 4), string_char_at(m13, 5), string_char_at(m13, 6), dm13, string_char_at(m13, 7));
if (m14 != "0") draw_mapblock(argument0 + 24, argument1 + 20, string_char_at(m14, 1), string_char_at(m14, 2), string_char_at(m14, 3), string_char_at(m14, 4), string_char_at(m14, 5), string_char_at(m14, 6), dm14, string_char_at(m14, 7));
if (m15 != "0") draw_mapblock(argument0 + 32, argument1 + 20, string_char_at(m15, 1), string_char_at(m15, 2), string_char_at(m15, 3), string_char_at(m15, 4), string_char_at(m15, 5), string_char_at(m15, 6), dm15, string_char_at(m15, 7));
draw_sprite_ext(sMapHilight, -1, argument0 + 16, argument1 + 12, 1, 1, 0, -1, malpha);
if (global.mapmarker) {
    if (moffx >= -2 && moffx <= 2 && moffy >= -1 && moffy <= 1) draw_sprite(sMapMarker, markfr, argument0 + 16 + moffx * 8, argument1 + 12 + moffy * 8);
    if (moffx > 2 && moffy >= -1 && moffy <= 1) draw_sprite(sHUDMapMarkA, markfr, argument0 + 32, argument1 + 12 + moffy * 8);
    if (moffx < -2 && moffy >= -1 && moffy <= 1) draw_sprite_ext(sHUDMapMarkA, markfr, argument0 + 8, argument1 + 12 + moffy * 8, -1, 1, 0, -1, 1);
    if (moffy < -1 && moffx >= -2 && moffx <= 2) draw_sprite_ext(sHUDMapMarkA, markfr, argument0 + 24 + moffx * 8, argument1 + 12, -1, 1, -90, -1, 1);
    if (moffy > 1 && moffx >= -2 && moffx <= 2) draw_sprite_ext(sHUDMapMarkA, markfr, argument0 + 16 + moffx * 8, argument1 + 20, -1, 1, 90, -1, 1);
    if (moffy < -1 && moffx > 2) draw_sprite(sHUDMapMarkB, markfr, argument0 + 32, argument1 + 4);
    if (moffy < -1 && moffx < -2) draw_sprite_ext(sHUDMapMarkB, markfr, argument0 + 8, argument1 + 4, -1, 1, 0, -1, 1);
    if (moffy > 1 && moffx > 2) draw_sprite_ext(sHUDMapMarkB, markfr, argument0 + 32, argument1 + 28, 1, -1, 0, -1, 1);
    if (moffy > 1 && moffx < -2) draw_sprite_ext(sHUDMapMarkB, markfr, argument0 + 8, argument1 + 28, -1, -1, 0, -1, 1);
}
