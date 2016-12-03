/// characterDrawEvent()
draw_character_from_surface(x, y, c_white, 1);
if (invincible > 0 || burning) {
    draw_character_from_surface(x, y, c_blue, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, c_white, 0.8 - fxtimer * 0.2);
    draw_set_blend_mode(bm_normal);
}
if (plantdrain > 0) {
    draw_character_from_surface(x, y, c_green, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, c_white, 0.8 - fxtimer * 0.2);
    draw_set_blend_mode(bm_normal);
}
if (monster_drain > 0 || queen_drain > 0) {
    draw_character_from_surface(x, y, c_red, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, c_white, 0.8 - fxtimer * 0.2);
    draw_set_blend_mode(bm_normal);
}
if (chargebeam >= 1) {
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, c_white, 0.1 + fxtimer * 0.2);
    draw_set_blend_mode(bm_normal);
}
if (speedboost == 1 || charge > 0 || state == SJSTART || state == SUPERJUMP || state == SJEND && statetime < 10) {
    if (fxtimer == 0 || fxtimer == 1) draw_character_from_surface(x, y, c_green, 1.1 + fxtimer * 0.2);
    if (fxtimer == 2 || fxtimer == 3) {
        draw_set_blend_mode(bm_add);
        draw_character_from_surface(x, y, c_yellow, 1);
        draw_character_from_surface(x, y, c_white, 1);
        draw_set_blend_mode(bm_normal);
    }
    if (fxtimer == 4 || fxtimer == 5) {
        draw_set_blend_mode(bm_add);
        draw_character_from_surface(x, y, c_red, 1);
        draw_set_blend_mode(bm_normal);
    }
}
if (state == SPIDERBALL || state == AIRBALL && sball == 1) {
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sSpiderballFX, -1, x, y, 1, 1, 0, -1, 0.2 + fxtimer * 0.1);
    draw_set_blend_mode(bm_normal);
}
