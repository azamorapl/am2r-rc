/// draw_gui()
if (global.classicmode == 0 && global.opshowhud) {
    xoff = 33;
    if (global.etanks == 0) draw_background(bgGUIHealth, 0, 0);
    if (global.etanks == 1 || global.etanks == 2) {
        draw_background(bgGUIHealth1, 0, 0);
        xoff = 42;
    }
    if (global.etanks == 3 || global.etanks == 4) {
        draw_background(bgGUIHealth2, 0, 0);
        xoff = 48;
    }
    if (global.etanks == 5 || global.etanks == 6) {
        draw_background(bgGUIHealth3, 0, 0);
        xoff = 54;
    }
    if (global.etanks == 7 || global.etanks == 8) {
        draw_background(bgGUIHealth4, 0, 0);
        xoff = 60;
    }
    if (global.etanks == 9 || global.etanks == 10) {
        draw_background(bgGUIHealth5, 0, 0);
        xoff = 66;
    }
    draw_set_font(guifont1);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(4, 4, gui_health());
    if (hudflash) {
        draw_set_font(guifont1a);
        draw_text_color(4, 4, gui_health(), c_white, c_white, c_white, c_white, hudflashfx / 4);
    }
    etankxoff = 32;
    if (global.etanks >= 1) {
        if (global.playerhealth > 99) draw_sprite(sGUIETank, 1, 0 + etankxoff, 4);
        if (global.playerhealth <= 99) draw_sprite(sGUIETank, 0, 0 + etankxoff, 4);
    }
    if (global.etanks >= 2) {
        if (global.playerhealth > 199) draw_sprite(sGUIETank, 1, 0 + etankxoff, 10);
        if (global.playerhealth <= 199) draw_sprite(sGUIETank, 0, 0 + etankxoff, 10);
    }
    if (global.etanks >= 3) {
        if (global.playerhealth > 299) draw_sprite(sGUIETank, 1, 0 + etankxoff + 6, 4);
        if (global.playerhealth <= 299) draw_sprite(sGUIETank, 0, 0 + etankxoff + 6, 4);
    }
    if (global.etanks >= 4) {
        if (global.playerhealth > 399) draw_sprite(sGUIETank, 1, 0 + etankxoff + 6, 10);
        if (global.playerhealth <= 399) draw_sprite(sGUIETank, 0, 0 + etankxoff + 6, 10);
    }
    if (global.etanks >= 5) {
        if (global.playerhealth > 499) draw_sprite(sGUIETank, 1, 0 + etankxoff + 12, 4);
        if (global.playerhealth <= 499) draw_sprite(sGUIETank, 0, 0 + etankxoff + 12, 4);
    }
    if (global.etanks >= 6) {
        if (global.playerhealth > 599) draw_sprite(sGUIETank, 1, 0 + etankxoff + 12, 10);
        if (global.playerhealth <= 599) draw_sprite(sGUIETank, 0, 0 + etankxoff + 12, 10);
    }
    if (global.etanks >= 7) {
        if (global.playerhealth > 699) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 4);
        if (global.playerhealth <= 699) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 4);
    }
    if (global.etanks >= 8) {
        if (global.playerhealth > 799) draw_sprite(sGUIETank, 1, 0 + etankxoff + 18, 10);
        if (global.playerhealth <= 799) draw_sprite(sGUIETank, 0, 0 + etankxoff + 18, 10);
    }
    if (global.etanks >= 9) {
        if (global.playerhealth > 899) draw_sprite(sGUIETank, 1, 0 + etankxoff + 24, 4);
        if (global.playerhealth <= 899) draw_sprite(sGUIETank, 0, 0 + etankxoff + 24, 4);
    }
    if (global.etanks == 10) {
        if (global.playerhealth > 999) draw_sprite(sGUIETank, 1, 0 + etankxoff + 24, 10);
        if (global.playerhealth <= 999) draw_sprite(sGUIETank, 0, 0 + etankxoff + 24, 10);
    }
    draw_set_font(global.guifont2);
    if (global.maxmissiles > 0) {
        if (global.maxmissiles >= 100) {
            draw_background(bgGUIMsl, xoff, 0);
        } else draw_background(bgGUISmsl, xoff, 0);
        draw_text(0 + xoff + 19, 7, string(global.missiles));
        if (global.opmslstyle == 0) {
            if (global.currentweapon != 1 || oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) draw_sprite(sGUIMissile, 0, 0 + xoff + 1, 4);
            if (global.currentweapon == 1 && oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) {
                if (oCharacter.armmsl == 0) draw_sprite(sGUIMissile, 1, 0 + xoff + 1, 4);
                if (oCharacter.armmsl == 1) draw_sprite(sGUIMissile, 2, 0 + xoff + 1, 4);
            }
        }
        if (global.opmslstyle == 1) {
            if (global.currentweapon == 1) {
                draw_sprite(sGUIMissile, 1, 0 + xoff + 1, 4);
            } else draw_sprite(sGUIMissile, 0, 0 + xoff + 1, 4);
        }
        if (global.maxmissiles >= 100) {
            xoff += 45;
        } else xoff += 38;
    }
    if (global.maxsmissiles > 0) {
        draw_background(bgGUISmsl, xoff, 0);
        draw_text(xoff + 19, 7, string(global.smissiles));
        if (global.opmslstyle == 0) {
            if (global.currentweapon != 2 || oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) draw_sprite(sGUISMissile, 0, xoff + 1, 4);
            if (global.currentweapon == 2 && oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) {
                if (oCharacter.armmsl == 0) draw_sprite(sGUISMissile, 1, xoff + 1, 4);
                if (oCharacter.armmsl == 1) draw_sprite(sGUISMissile, 2, xoff + 1, 4);
            }
        }
        if (global.opmslstyle == 1) {
            if (global.currentweapon == 2) {
                draw_sprite(sGUISMissile, 1, xoff + 1, 4);
            } else draw_sprite(sGUISMissile, 0, xoff + 1, 4);
        }
        xoff += 38;
    }
    if (global.maxpbombs > 0) {
        draw_background(bgGUISmsl, xoff, 0);
        draw_text(xoff + 19, 7, string(global.pbombs));
        if (global.opmslstyle == 0) {
            if (oCharacter.state != 23 && oCharacter.state != 24 && oCharacter.state != 27 && oCharacter.state != 54 && oCharacter.state != 55 && oCharacter.sjball == 0) draw_sprite(sGUIPBomb, 0, xoff + 1, 4);
            if (oCharacter.state == 23 || oCharacter.state == 24 || oCharacter.state == 27 || oCharacter.state == 54 || oCharacter.state == 55 || oCharacter.sjball) {
                if (oCharacter.armmsl == 0) draw_sprite(sGUIPBomb, 1, xoff + 1, 4);
                if (oCharacter.armmsl == 1) draw_sprite(sGUIPBomb, 2, xoff + 1, 4);
            }
        }
        if (global.opmslstyle == 1) {
            if (global.currentweapon == 3) {
                draw_sprite(sGUIPBomb, 1, xoff + 1, 4);
            } else draw_sprite(sGUIPBomb, 0, xoff + 1, 4);
        }
    }
    if (global.ophudshowmap && global.ophudshowmetrcount) {
        draw_background(bgGUIMap, 250, 0);
        xoff = 250;
    }
    if (global.ophudshowmap && global.ophudshowmetrcount == 0) draw_background(bgGUIMapOnly, 272, 0);
    if (global.ophudshowmap == 0 && global.ophudshowmetrcount) {
        draw_background(bgGUIMetOnly, 296, 0);
        xoff = 296;
    }
    if (global.ophudshowmetrcount) {
        if (global.ophudshowmetrcount == 1) {
            draw_background(bgGUIMetCountBG1, xoff + 4, 4);
            draw_text(xoff + 6, 21, to_string_lz(global.monstersarea));
        }
        if (global.ophudshowmetrcount == 2) {
            draw_background(bgGUIMetCountBG2, xoff + 4, 4);
            draw_text(xoff + 6, 21, to_string_lz(global.monstersleft));
        }
    }
    if (global.ophudshowmap) draw_gui_map(276, 0);
} // if (global.classicmode == 0 && global.opshowhud)
