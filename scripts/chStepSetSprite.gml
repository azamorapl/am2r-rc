/// chStepSetSprite()
var armcannon, set;
armcannon = 1;
set = global.currentsuit;
if (state == STANDING) {
    if (landing == 1) {
        if (set == 0) sprite_index = sLand;
        if (set == 1) sprite_index = sVLand;
        if (set == 2) sprite_index = sGLand;
        image_speed = 0.5;
    } else if (turning == 1) {
        if (set == 0) sprite_index = sTurn;
        if (set == 1) sprite_index = sVTurn;
        if (set == 2) sprite_index = sGTurn;
        image_speed = 0.5;
    } else {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sStandRight;
            if (set == 1) sprite_index = sVStandRight;
            if (set == 2) sprite_index = sGStandRight;
            image_speed = 0.1;
            if (idle == timetoidle) idleanim = round(random(1));
            if (idle > timetoidle && !instance_exists(oEMPNoise)) {
                image_speed = 0;
                armcannon = 0;
                if (set == 0) sprite_index = sIdleRight;
                if (set == 1) sprite_index = sVIdleRight;
                if (set == 2) sprite_index = sGIdleRight;
                if (idleanim == 0) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 90) image_index = 3;
                    if (idle > timetoidle + 90 && idle <= timetoidle + 100) image_index = 4;
                    if (idle > timetoidle + 100 && idle <= timetoidle + 160) image_index = 5;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 4;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 3;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 190) image_index = 2;
                    if (idle > timetoidle + 190 && idle <= timetoidle + 200) image_index = 6;
                    if (idle > timetoidle + 200 && idle <= timetoidle + 270) image_index = 7;
                    if (idle > timetoidle + 270 && idle <= timetoidle + 280) image_index = 6;
                    if (idle > timetoidle + 280 && idle <= timetoidle + 290) image_index = 1;
                    if (idle > timetoidle + 290) {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
                if (idleanim == 1) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 110) image_index = 8;
                    if (idle > timetoidle + 110 && idle <= timetoidle + 120) image_index = 9;
                    if (idle > timetoidle + 120 && idle <= timetoidle + 130) image_index = 10;
                    if (idle > timetoidle + 130 && idle <= timetoidle + 140) image_index = 11;
                    if (idle > timetoidle + 140 && idle <= timetoidle + 150) image_index = 10;
                    if (idle > timetoidle + 150 && idle <= timetoidle + 160) image_index = 11;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 10;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 9;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 210) image_index = 10;
                    if (idle > timetoidle + 210 && idle <= timetoidle + 220) image_index = 11;
                    if (idle > timetoidle + 220 && idle <= timetoidle + 230) image_index = 10;
                    if (idle > timetoidle + 230 && idle <= timetoidle + 240) image_index = 9;
                    if (idle > timetoidle + 240 && idle <= timetoidle + 250) image_index = 8;
                    if (idle > timetoidle + 250 && idle <= timetoidle + 260) image_index = 2;
                    if (idle > timetoidle + 260 && idle <= timetoidle + 270) image_index = 1;
                    if (idle > timetoidle + 270) {
                        idle = 0;
                        timetoidle = 300 + floor(random(300));
                    }
                }
            } // if (idle > timetoidle && !instance_exists(oEMPNoise))
            if (aimdirection == 2) {
                if (set == 0) sprite_index = sStandAimUR;
                if (set == 1) sprite_index = sVStandAimUR;
                if (set == 2) sprite_index = sGStandAimUR;
                image_speed = 0.1;
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = sStandAimDR;
                if (set == 1) sprite_index = sVStandAimDR;
                if (set == 2) sprite_index = sGStandAimDR;
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = sStandAimUp;
                if (set == 1) sprite_index = sVStandAimUp;
                if (set == 2) sprite_index = sGStandAimUp;
                image_speed = 0.1;
            }
        } // if (facing == RIGHT)
        if (facing == LEFT) {
            if (set == 0) sprite_index = sStandLeft;
            if (set == 1) sprite_index = sVStandLeft;
            if (set == 2) sprite_index = sGStandLeft;
            image_speed = 0.1;
            if (idle == timetoidle) idleanim = round(random(1));
            if (idle > timetoidle && !instance_exists(oEMPNoise)) {
                image_speed = 0;
                armcannon = 0;
                if (set == 0) sprite_index = sIdleLeft;
                if (set == 1) sprite_index = sVIdleLeft;
                if (set == 2) sprite_index = sGIdleLeft;
                if (idleanim == 0) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 90) image_index = 3;
                    if (idle > timetoidle + 90 && idle <= timetoidle + 100) image_index = 4;
                    if (idle > timetoidle + 100 && idle <= timetoidle + 160) image_index = 5;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 4;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 3;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 190) image_index = 2;
                    if (idle > timetoidle + 190 && idle <= timetoidle + 200) image_index = 6;
                    if (idle > timetoidle + 200 && idle <= timetoidle + 270) image_index = 7;
                    if (idle > timetoidle + 270 && idle <= timetoidle + 280) image_index = 6;
                    if (idle > timetoidle + 280 && idle <= timetoidle + 290) image_index = 1;
                    if (idle > timetoidle + 290) {
                        idle = 0;
                        timetoidle = 60;
                    }
                }
                if (idleanim == 1) {
                    if (idle > timetoidle && idle <= timetoidle + 10) image_index = 0;
                    if (idle > timetoidle + 10 && idle <= timetoidle + 20) image_index = 1;
                    if (idle > timetoidle + 20 && idle <= timetoidle + 80) image_index = 2;
                    if (idle > timetoidle + 80 && idle <= timetoidle + 110) image_index = 8;
                    if (idle > timetoidle + 110 && idle <= timetoidle + 120) image_index = 9;
                    if (idle > timetoidle + 120 && idle <= timetoidle + 130) image_index = 10;
                    if (idle > timetoidle + 130 && idle <= timetoidle + 140) image_index = 11;
                    if (idle > timetoidle + 140 && idle <= timetoidle + 150) image_index = 10;
                    if (idle > timetoidle + 150 && idle <= timetoidle + 160) image_index = 11;
                    if (idle > timetoidle + 160 && idle <= timetoidle + 170) image_index = 10;
                    if (idle > timetoidle + 170 && idle <= timetoidle + 180) image_index = 9;
                    if (idle > timetoidle + 180 && idle <= timetoidle + 210) image_index = 10;
                    if (idle > timetoidle + 210 && idle <= timetoidle + 220) image_index = 11;
                    if (idle > timetoidle + 220 && idle <= timetoidle + 230) image_index = 10;
                    if (idle > timetoidle + 230 && idle <= timetoidle + 240) image_index = 9;
                    if (idle > timetoidle + 240 && idle <= timetoidle + 250) image_index = 8;
                    if (idle > timetoidle + 250 && idle <= timetoidle + 260) image_index = 2;
                    if (idle > timetoidle + 260 && idle <= timetoidle + 270) image_index = 1;
                    if (idle > timetoidle + 270) {
                        idle = 0;
                        timetoidle = 300 + random(300);
                    }
                }
            } // if (idle > timetoidle && !instance_exists(oEMPNoise))
            if (aimdirection == 3) {
                if (set == 0) sprite_index = sStandAimUL;
                if (set == 1) sprite_index = sVStandAimUL;
                if (set == 2) sprite_index = sGStandAimUL;
                image_speed = 0.1;
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = sStandAimDL;
                if (set == 1) sprite_index = sVStandAimDL;
                if (set == 2) sprite_index = sGStandAimDL;
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = sStandAimUpL;
                if (set == 1) sprite_index = sVStandAimUpL;
                if (set == 2) sprite_index = sGStandAimUpL;
                image_speed = 0.1;
            }
        } // if (facing == LEFT)
    } // if (landing == 1) else
} // if (state == STANDING)
if (state == RUNNING) {
    landing = 0;
    if (turning == 1) {
        if (set == 0) sprite_index = sTurn;
        if (set == 1) sprite_index = sVTurn;
        if (set == 2) sprite_index = sGTurn;
        image_speed = 0.5;
    } else {
        if (facing == RIGHT && walking == 0) {
            if (aimdirection == 0 && firing == 0 && armmsl == 0) {
                if (set == 0) sprite_index = sRunRight;
                if (set == 1) sprite_index = sVRunRight;
                if (set == 2) sprite_index = sGRunRight;
                image_speed = 0.5;
            }
            if (aimdirection == 0 && (firing > 0 || armmsl == 1)) {
                if (set == 0) sprite_index = sRunAimR;
                if (set == 1) sprite_index = sVRunAimR;
                if (set == 2) sprite_index = sGRunAimR;
                image_speed = 0.5;
            }
            if (aimdirection == 2) {
                if (set == 0) sprite_index = sRunAimUR;
                if (set == 1) sprite_index = sVRunAimUR;
                if (set == 2) sprite_index = sGRunAimUR;
                image_speed = 0.5;
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = sRunAimDR;
                if (set == 1) sprite_index = sVRunAimDR;
                if (set == 2) sprite_index = sGRunAimDR;
                image_speed = 0.5;
            }
        } // if (facing == RIGHT && walking == 0)
        if (facing == LEFT && walking == 0) {
            if (aimdirection == 1 && firing == 0 && armmsl == 0) {
                if (set == 0) sprite_index = sRunLeft;
                if (set == 1) sprite_index = sVRunLeft;
                if (set == 2) sprite_index = sGRunLeft;
                image_speed = 0.5;
            }
            if (aimdirection == 1 && (firing > 0 || armmsl == 1)) {
                if (set == 0) sprite_index = sRunAimL;
                if (set == 1) sprite_index = sVRunAimL;
                if (set == 2) sprite_index = sGRunAimL;
                image_speed = 0.5;
            }
            if (aimdirection == 3) {
                if (set == 0) sprite_index = sRunAimUL;
                if (set == 1) sprite_index = sVRunAimUL;
                if (set == 2) sprite_index = sGRunAimUL;
                image_speed = 0.5;
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = sRunAimDL;
                if (set == 1) sprite_index = sVRunAimDL;
                if (set == 2) sprite_index = sGRunAimDL;
                image_speed = 0.5;
            }
        } // if (facing == LEFT && walking == 0)
        if (facing == RIGHT && walking == 1) {
            if (aimdirection == 0 && firing == 0 && armmsl == 0 && aimlock == 0) {
                if (set == 0) sprite_index = sWalkRight;
                if (set == 1) sprite_index = sVWalkRight;
                if (set == 2) sprite_index = sGWalkRight;
            }
            if (aimdirection == 0 && (firing > 0 || armmsl == 1 || aimlock == 1)) {
                if (set == 0) sprite_index = sWalkAimR;
                if (set == 1) sprite_index = sVWalkAimR;
                if (set == 2) sprite_index = sGWalkAimR;
            }
            if (aimdirection == 2) {
                if (set == 0) sprite_index = sWalkAimUR;
                if (set == 1) sprite_index = sVWalkAimUR;
                if (set == 2) sprite_index = sGWalkAimUR;
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = sWalkAimDR;
                if (set == 1) sprite_index = sVWalkAimDR;
                if (set == 2) sprite_index = sGWalkAimDR;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = sWalkAimUp;
                if (set == 1) sprite_index = sVWalkAimUp;
                if (set == 2) sprite_index = sGWalkAimUp;
            }
            if (xVel > 0) {
                image_speed = 0.25;
            } else if (xVel < 0) {
                image_speed = -0.25;
                if (image_index <= -10) image_index = 0;
            }
        } // if (facing == RIGHT && walking == 1)
        if (facing == LEFT && walking == 1) {
            if (aimdirection == 1 && firing == 0 && armmsl == 0 && aimlock == 0) {
                if (set == 0) sprite_index = sWalkLeft;
                if (set == 1) sprite_index = sVWalkLeft;
                if (set == 2) sprite_index = sGWalkLeft;
            }
            if (aimdirection == 1 && (firing > 0 || armmsl == 1 || aimlock == 1)) {
                if (set == 0) sprite_index = sWalkAimL;
                if (set == 1) sprite_index = sVWalkAimL;
                if (set == 2) sprite_index = sGWalkAimL;
            }
            if (aimdirection == 3) {
                if (set == 0) sprite_index = sWalkAimUL;
                if (set == 1) sprite_index = sVWalkAimUL;
                if (set == 2) sprite_index = sGWalkAimUL;
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = sWalkAimDL;
                if (set == 1) sprite_index = sVWalkAimDL;
                if (set == 2) sprite_index = sGWalkAimDL;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = sWalkAimUpL;
                if (set == 1) sprite_index = sVWalkAimUpL;
                if (set == 2) sprite_index = sGWalkAimUpL;
            }
            if (xVel < 0) {
                image_speed = 0.25;
            } else if (xVel > 0) {
                image_speed = -0.25;
                if (image_index <= -10) image_index = 0;
            }
        } // if (facing == LEFT && walking == 1)
    } // if (turning == 1) else
} // if (state == RUNNING)
if (state == DUCKING) {
    if (unmorphing == 1) {
        if (set == 0) sprite_index = sUnmorph;
        if (set == 1) sprite_index = sVUnmorph;
        if (set == 2) sprite_index = sGUnmorph;
        image_speed = 0.8;
    } else if (turning == 1) {
        if (set == 0) sprite_index = sCrouchTurn;
        if (set == 1) sprite_index = sVCrouchTurn;
        if (set == 2) sprite_index = sGCrouchTurn;
        image_speed = 0.5;
    } else {
        if (set == 0) sprite_index = sCrouch;
        if (set == 1) sprite_index = sVCrouch;
        if (set == 2) sprite_index = sGCrouch;
        image_speed = 0.1;
    }
}
if (state == JUMPING) {
    if (vjump == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sJumpRight;
            if (set == 1) sprite_index = sVJumpRight;
            if (set == 2) sprite_index = sGJumpRight;
            image_speed = 0.75;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = sJumpLeft;
            if (set == 1) sprite_index = sVJumpLeft;
            if (set == 2) sprite_index = sGJumpLeft;
            image_speed = 0.75;
        }
        if (global.spacejump == 1 && statetime > 4 && (inwater == 0 || global.currentsuit == 2)) {
            if (set == 0) sprite_index = sSpacejump;
            if (set == 1) sprite_index = sVSpacejump;
            if (set == 2) sprite_index = sGSpacejump;
            image_speed = 1;
        }
    }
    if (vjump == 1) {
        if (turning == 1) {
            if (set == 0) sprite_index = sAirTurn;
            if (set == 1) sprite_index = sVAirTurn;
            if (set == 2) sprite_index = sGAirTurn;
            image_speed = 0.5;
            if (aimdirection == 7) {
                if (facing == RIGHT) {
                    if (set == 0) sprite_index = sJAimDwnTR;
                    if (set == 1) sprite_index = sVJAimDwnTR;
                    if (set == 2) sprite_index = sGJAimDwnTR;
                    image_speed = 0.75;
                }
                if (facing == LEFT) {
                    if (set == 0) sprite_index = sJAimDwnTL;
                    if (set == 1) sprite_index = sVJAimDwnTL;
                    if (set == 2) sprite_index = sGJAimDwnTL;
                    image_speed = 0.75;
                }
            }
        } else if (unmorphing == 1) {
            if (set == 0) sprite_index = sUnmorph;
            if (set == 1) sprite_index = sVUnmorph;
            if (set == 2) sprite_index = sGUnmorph;
            image_speed = 0.8;
        } else {
            if (aimdirection != 7) {
                if (set == 0) sprite_index = sVjump;
                if (set == 1) sprite_index = sVVjump;
                if (set == 2) sprite_index = sGVjump;
                image_speed = 0.2;
            }
            if (aimdirection == 7) {
                if (facing == RIGHT) {
                    if (set == 0) sprite_index = sJAimDwnR;
                    if (set == 1) sprite_index = sVJAimDwnR;
                    if (set == 2) sprite_index = sGJAimDwnR;
                    image_speed = 0.75;
                }
                if (facing == LEFT) {
                    if (set == 0) sprite_index = sJAimDwnL;
                    if (set == 1) sprite_index = sVJAimDwnL;
                    if (set == 2) sprite_index = sGJAimDwnL;
                    image_speed = 0.75;
                }
            }
        } // if (turning == 1) else
    } // if (vjump == 1)
    if (walljumping == 1) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sWalljump;
            if (set == 1) sprite_index = sVWalljump;
            if (set == 2) sprite_index = sGWalljump;
            image_speed = 1;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = sWalljumpL;
            if (set == 1) sprite_index = sVWalljumpL;
            if (set == 2) sprite_index = sGWalljumpL;
            image_speed = 1;
        }
    }
} // if (state == JUMPING)
if (state == FALLING && statePrev == FALLING && statePrevPrev == FALLING) {
    if (set == 0) sprite_index = sJumpRight;
    if (set == 1) sprite_index = sVJumpRight;
    if (set == 2) sprite_index = sGJumpRight;
    image_speed = 0.75;
}
if (state == BALL) {
    if (morphing == 1) {
        if (set == 0) sprite_index = sMorph;
        if (set == 1) sprite_index = sVMorph;
        if (set == 2) sprite_index = sGMorph;
        if (global.opmrpstyle == 0) {
            image_speed = 0.8;
        } else image_speed = 0.5;
    } else if (turning == 1) {
        if (set == 0) sprite_index = sMorphBallTurn;
        if (set == 1) sprite_index = sVMorphBallTurn;
        if (set == 2) sprite_index = sGMorphBallTurn;
        image_speed = 1;
    } else {
        if (set == 0) sprite_index = sMorphBall;
        if (set == 1) sprite_index = sVMorphBall;
        if (set == 2) sprite_index = sGMorphBall;
        image_speed = 0.3;
    }
}
if (state == AIRBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY) {
    if (morphing == 1) {
        if (set == 0) sprite_index = sMorph;
        if (set == 1) sprite_index = sVMorph;
        if (set == 2) sprite_index = sGMorph;
        image_speed = 0.8;
    } else if (turning == 1) {
        if (set == 0) sprite_index = sMorphBallTurn;
        if (set == 1) sprite_index = sVMorphBallTurn;
        if (set == 2) sprite_index = sGMorphBallTurn;
        image_speed = 1;
    } else {
        if (set == 0) sprite_index = sAirMorphBall;
        if (set == 1) sprite_index = sVAirMorphBall;
        if (set == 2) sprite_index = sGAirMorphBall;
        image_speed = 0.3;
    }
}
if (state == GRABBEDQUEEN) {
    if (set == 0) sprite_index = sBittenL;
    if (set == 1) sprite_index = sVBittenL;
    if (set == 2) sprite_index = sGBittenL;
}
if (state == SPIDERBALL || state == AIRBALL && sball == 1) {
    if (set == 0) sprite_index = sSpiderMorphBall;
    if (set == 1) sprite_index = sVSpiderMorphBall;
    if (set == 2) sprite_index = sGSpiderMorphBall;
    image_speed = 0.3;
}
if (state == LOCKEDBALL) {
    if (set == 0) sprite_index = sMorphBall;
    if (set == 1) sprite_index = sVMorphBall;
    if (set == 2) sprite_index = sGMorphBall;
    image_speed = 0;
    image_index = 0;
}
if (state == GRIP) {
    if (facing == RIGHT) {
        if (turning == 1) {
            if (set == 0) sprite_index = sGripTurnR;
            if (set == 1) sprite_index = sVGripTurnR;
            if (set == 2) sprite_index = sGGripTurnR;
            image_speed = 0.5;
        } else {
            if (aimdirection == 0 || aimdirection == 2 || aimdirection == 4) {
                if (set == 0) sprite_index = sGrip;
                if (set == 1) sprite_index = sVGrip;
                if (set == 2) sprite_index = sGGrip;
                image_speed = 0.1;
            }
            if (aimdirection == 1) {
                if (set == 0) sprite_index = sGripAimL;
                if (set == 1) sprite_index = sVGripAimL;
                if (set == 2) sprite_index = sGGripAimL;
                image_speed = 0.1;
            }
            if (aimdirection == 3) {
                if (set == 0) sprite_index = sGripAimUL;
                if (set == 1) sprite_index = sVGripAimUL;
                if (set == 2) sprite_index = sGGripAimUL;
                image_speed = 0.1;
            }
            if (aimdirection == 5) {
                if (set == 0) sprite_index = sGripAimDL;
                if (set == 1) sprite_index = sVGripAimDL;
                if (set == 2) sprite_index = sGGripAimDL;
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = sGripAimUpR;
                if (set == 1) sprite_index = sVGripAimUpR;
                if (set == 2) sprite_index = sGGripAimUpR;
                image_speed = 0.1;
            }
            if (aimdirection == 7) {
                if (set == 0) sprite_index = sGripAimDwnR;
                if (set == 1) sprite_index = sVGripAimDwnR;
                if (set == 2) sprite_index = sGGripAimDwnR;
                image_speed = 0.1;
            }
        } // if (turning == 1) else
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (turning == 1) {
            if (set == 0) sprite_index = sGripTurnL;
            if (set == 1) sprite_index = sVGripTurnL;
            if (set == 2) sprite_index = sGGripTurnL;
            image_speed = 0.5;
        } else {
            if (aimdirection == 1 || aimdirection == 3 || aimdirection == 5) {
                if (set == 0) sprite_index = sGripL;
                if (set == 1) sprite_index = sVGripL;
                if (set == 2) sprite_index = sGGripL;
                image_speed = 0.1;
            }
            if (aimdirection == 0) {
                if (set == 0) sprite_index = sGripAimR;
                if (set == 1) sprite_index = sVGripAimR;
                if (set == 2) sprite_index = sGGripAimR;
                image_speed = 0.1;
            }
            if (aimdirection == 2) {
                if (set == 0) sprite_index = sGripAimUR;
                if (set == 1) sprite_index = sVGripAimUR;
                if (set == 2) sprite_index = sGGripAimUR;
                image_speed = 0.1;
            }
            if (aimdirection == 4) {
                if (set == 0) sprite_index = sGripAimDR;
                if (set == 1) sprite_index = sVGripAimDR;
                if (set == 2) sprite_index = sGGripAimDR;
                image_speed = 0.1;
            }
            if (aimdirection == 6) {
                if (set == 0) sprite_index = sGripAimUpL;
                if (set == 1) sprite_index = sVGripAimUpL;
                if (set == 2) sprite_index = sGGripAimUpL;
                image_speed = 0.1;
            }
            if (aimdirection == 7) {
                if (set == 0) sprite_index = sGripAimDwnL;
                if (set == 1) sprite_index = sVGripAimDwnL;
                if (set == 2) sprite_index = sGGripAimDwnL;
                image_speed = 0.1;
            }
        } // if (turning == 1) else
    } // if (facing == LEFT)
} // if (state == GRIP)
if (state == CLIMBING) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sClimb;
        if (set == 1) sprite_index = sVClimb;
        if (set == 2) sprite_index = sGClimb;
        image_speed = 1;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sClimbL;
        if (set == 1) sprite_index = sVClimbL;
        if (set == 2) sprite_index = sGClimbL;
        image_speed = 1;
    }
}
if (state == BRAKING) {
    if (sjball == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sBrakeR;
            if (set == 1) sprite_index = sVBrakeR;
            if (set == 2) sprite_index = sGBrakeR;
            image_speed = 0.2;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = sBrakeL;
            if (set == 1) sprite_index = sVBrakeL;
            if (set == 2) sprite_index = sGBrakeL;
            image_speed = 0.2;
        }
    }
    if (sjball == 1) {
        if (set == 0) sprite_index = sAirMorphBall;
        if (set == 1) sprite_index = sVAirMorphBall;
        if (set == 2) sprite_index = sGAirMorphBall;
        image_speed = 0;
    }
}
if (state == SJSTART && sjball == 0) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sSJumpStart;
        if (set == 1) sprite_index = sVSJumpStart;
        if (set == 2) sprite_index = sGSJumpStart;
        image_speed = 0.3;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sSJumpStartL;
        if (set == 1) sprite_index = sVSJumpStartL;
        if (set == 2) sprite_index = sGSJumpStartL;
        image_speed = 0.3;
    }
}
if (state == SUPERJUMP && sjball == 0) {
    if (sjdir == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sSJumpUpR;
            if (set == 1) sprite_index = sVSJumpUpR;
            if (set == 2) sprite_index = sGSJumpUpR;
            image_speed = 0.5;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = sSJumpUpL;
            if (set == 1) sprite_index = sVSJumpUpL;
            if (set == 2) sprite_index = sGSJumpUpL;
            image_speed = 0.5;
        }
    } else {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sSJumpR;
            if (set == 1) sprite_index = sVSJumpR;
            if (set == 2) sprite_index = sGSJumpR;
            image_speed = 0.4;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = sSJumpL;
            if (set == 1) sprite_index = sVSJumpL;
            if (set == 2) sprite_index = sGSJumpL;
            image_speed = 0.4;
        }
    } // if (sjdir == 0) else
} // if (state == SUPERJUMP && sjball == 0)
if (state == SJSTART && sjball == 1) {
    if (set == 0) sprite_index = sAirMorphBall;
    if (set == 1) sprite_index = sVAirMorphBall;
    if (set == 2) sprite_index = sGAirMorphBall;
    image_speed = 0;
}
if (state == SUPERJUMP && sjball == 1) {
    if (sjdir == 0) {
        if (set == 0) sprite_index = sMorphBallTurn;
        if (set == 1) sprite_index = sVMorphBallTurn;
        if (set == 2) sprite_index = sGMorphBallTurn;
        image_speed = 0.5;
    } else {
        if (set == 0) sprite_index = sAirMorphBall;
        if (set == 1) sprite_index = sVAirMorphBall;
        if (set == 2) sprite_index = sGAirMorphBall;
        image_speed = 1;
    }
}
if (state == HURT) {
    if (sjball == 0) {
        if (facing == RIGHT) {
            if (set == 0) sprite_index = sHurtR;
            if (set == 1) sprite_index = sVHurtR;
            if (set == 2) sprite_index = sGHurtR;
            image_speed = 0.2;
        }
        if (facing == LEFT) {
            if (set == 0) sprite_index = sHurtL;
            if (set == 1) sprite_index = sVHurtL;
            if (set == 2) sprite_index = sGHurtL;
            image_speed = 0.2;
        }
    }
    if (sjball == 1) {
        if (set == 0) sprite_index = sAirMorphBall;
        if (set == 1) sprite_index = sVAirMorphBall;
        if (set == 2) sprite_index = sGAirMorphBall;
        image_speed = 0.5;
    }
}
if (state == IDLE || state == SAVING || state == SAVINGSHIP || state == ELEVATOR || state == GFELEVATOR) {
    if (facing == 0) {
        if (set == 0) sprite_index = sFront;
        if (set == 1) sprite_index = sVFront;
        if (set == 2) sprite_index = sGFront;
        image_speed = 0.1;
    }
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sFrontR;
        if (set == 1) sprite_index = sVFrontR;
        if (set == 2) sprite_index = sGFrontR;
        image_speed = 0.5;
        aimdirection = 0;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sFrontL;
        if (set == 1) sprite_index = sVFrontL;
        if (set == 2) sprite_index = sGFrontL;
        image_speed = 0.5;
        aimdirection = 1;
    }
}
if (state == GRABBEDGAMMA || state == GRABBEDOMEGA) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sHurtR;
        if (set == 1) sprite_index = sVHurtR;
        if (set == 2) sprite_index = sGHurtR;
        image_speed = 0;
        image_index = 1;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sHurtL;
        if (set == 1) sprite_index = sVHurtL;
        if (set == 2) sprite_index = sGHurtL;
        image_speed = 0;
        image_index = 1;
    }
}
if (state == KNOCKBACK1 || state == KNOCKBACK2) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sKnockbackR;
        if (set == 1) sprite_index = sVKnockbackR;
        if (set == 2) sprite_index = sGKnockbackR;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sKnockbackL;
        if (set == 1) sprite_index = sVKnockbackL;
        if (set == 2) sprite_index = sGKnockbackL;
    }
}
if (state == KNOCKBACK1_LAND || state == KNOCKBACK2_LAND) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sKnockLandR;
        if (set == 1) sprite_index = sVKnockLandR;
        if (set == 2) sprite_index = sGKnockLandR;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sKnockLandL;
        if (set == 1) sprite_index = sVKnockLandL;
        if (set == 2) sprite_index = sGKnockLandL;
    }
}
if (state == A4EXPL) {
    if (facing == RIGHT && statetime >= 60) {
        if (set == 0) sprite_index = sKnockLandR;
        if (set == 1) sprite_index = sVKnockLandR;
        if (set == 2) sprite_index = sGKnockLandR;
    }
}
if (state == RECOVER) {
    if (facing == RIGHT) {
        if (set == 0) sprite_index = sJumpRight;
        if (set == 1) sprite_index = sVJumpRight;
        if (set == 2) sprite_index = sGJumpRight;
        image_speed = -0.5;
    }
    if (facing == LEFT) {
        if (set == 0) sprite_index = sJumpLeft;
        if (set == 1) sprite_index = sVJumpLeft;
        if (set == 2) sprite_index = sGJumpLeft;
        image_speed = -0.5;
    }
}
if (inwater == 1 && global.currentsuit != 2 || monster_drain > 0) {
    if (state == RUNNING || state == JUMPING) image_speed *= 0.5;
}
aspr1 = sBlank;
asprx = 0;
aspry = 0;
if (state == DUCKING && morphing == 0 && unmorphing == 0 && turning == 0) {
    if (facing == RIGHT) {
        if (aimdirection == 0) {
            if (set == 0) aspr1 = sAimR;
            if (set == 1) aspr1 = sVAimR;
            if (set == 2) aspr1 = sGAimR;
            aspry = -12;
        }
        if (aimdirection == 2) {
            if (set == 0) aspr1 = sAimUR;
            if (set == 1) aspr1 = sVAimUR;
            if (set == 2) aspr1 = sGAimUR;
            aspry = -12;
        }
        if (aimdirection == 4) {
            if (set == 0) aspr1 = sAimDR;
            if (set == 1) aspr1 = sVAimDR;
            if (set == 2) aspr1 = sGAimDR;
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sAimUpR;
            if (set == 1) aspr1 = sVAimUpR;
            if (set == 2) aspr1 = sGAimUpR;
            aspry = -13;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 1) {
            if (set == 0) aspr1 = sAimLcr;
            if (set == 1) aspr1 = sVAimLcr;
            if (set == 2) aspr1 = sGAimLcr;
            aspry = -12;
        }
        if (aimdirection == 3) {
            if (set == 0) aspr1 = sAimUL;
            if (set == 1) aspr1 = sVAimUL;
            if (set == 2) aspr1 = sGAimUL;
            aspry = -12;
        }
        if (aimdirection == 5) {
            if (set == 0) aspr1 = sAimDLcr;
            if (set == 1) aspr1 = sVAimDLcr;
            if (set == 2) aspr1 = sGAimDLcr;
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sAimUpL;
            if (set == 1) aspr1 = sVAimUpL;
            if (set == 2) aspr1 = sGAimUpL;
            aspry = -13;
        }
    } // if (facing == LEFT)
} // if (state == DUCKING && morphing == 0 && unmorphing == 0 && turning == 0)
if (state == DUCKING && turning == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = sTAimR;
            if (set == 1) aspr1 = sVTAimR;
            if (set == 2) aspr1 = sGTAimR;
            aspry = -12;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = sTAimUR;
            if (set == 1) aspr1 = sVTAimUR;
            if (set == 2) aspr1 = sGTAimUR;
            asprx = -2;
            aspry = -12;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = sTAimDR;
            if (set == 1) aspr1 = sVTAimDR;
            if (set == 2) aspr1 = sGTAimDR;
            asprx = -2;
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sTAimUpR;
            if (set == 1) aspr1 = sVTAimUpR;
            if (set == 2) aspr1 = sGTAimUpR;
            aspry = -13;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = sTAimL;
            if (set == 1) aspr1 = sVTAimL;
            if (set == 2) aspr1 = sGTAimL;
            aspry = -12;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = sTAimUL;
            if (set == 1) aspr1 = sVTAimUL;
            if (set == 2) aspr1 = sGTAimUL;
            asprx = -2;
            aspry = -12;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = sTAimDL;
            if (set == 1) aspr1 = sVTAimDL;
            if (set == 2) aspr1 = sGTAimDL;
            aspry = -12;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sTAimUpL;
            if (set == 1) aspr1 = sVTAimUpL;
            if (set == 2) aspr1 = sGTAimUpL;
            aspry = -13;
        }
    } // if (facing == LEFT)
} // if (state == DUCKING && turning == 1)
if ((state == STANDING || state == RUNNING) && turning == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = sTAimRst;
            if (set == 1) aspr1 = sVTAimRst;
            if (set == 2) aspr1 = sGTAimRst;
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = sTAimUR;
            if (set == 1) aspr1 = sVTAimUR;
            if (set == 2) aspr1 = sGTAimUR;
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = sTAimDR;
            if (set == 1) aspr1 = sVTAimDR;
            if (set == 2) aspr1 = sGTAimDR;
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sTAimUpR;
            if (set == 1) aspr1 = sVTAimUpR;
            if (set == 2) aspr1 = sGTAimUpR;
            aspry = -24;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = sTAimLst;
            if (set == 1) aspr1 = sVTAimLst;
            if (set == 2) aspr1 = sGTAimLst;
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = sTAimUL;
            if (set == 1) aspr1 = sVTAimUL;
            if (set == 2) aspr1 = sGTAimUL;
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = sTAimDL;
            if (set == 1) aspr1 = sVTAimDL;
            if (set == 2) aspr1 = sGTAimDL;
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sTAimUpL;
            if (set == 1) aspr1 = sVTAimUpL;
            if (set == 2) aspr1 = sGTAimUpL;
            aspry = -24;
        }
    } // if (facing == LEFT)
} // if ((state == STANDING || state == RUNNING) && turning == 1)
if ((state == STANDING || state == RUNNING) && landing == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimR;
                if (set == 1) aspr1 = sVAimR;
                if (set == 2) aspr1 = sGAimR;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimRst;
                if (set == 1) aspr1 = sVAimRst;
                if (set == 2) aspr1 = sGAimRst;
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimRst;
                if (set == 1) aspr1 = sVAimRst;
                if (set == 2) aspr1 = sGAimRst;
                asprx = -1;
                aspry = -21;
            }
        }
        if (aimdirection == 2) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimUR;
                if (set == 1) aspr1 = sVAimUR;
                if (set == 2) aspr1 = sGAimUR;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimUR;
                if (set == 1) aspr1 = sVAimUR;
                if (set == 2) aspr1 = sGAimUR;
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimUR;
                if (set == 1) aspr1 = sVAimUR;
                if (set == 2) aspr1 = sGAimUR;
                asprx = -1;
                aspry = -21;
            }
        }
        if (aimdirection == 4) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimDR;
                if (set == 1) aspr1 = sVAimDR;
                if (set == 2) aspr1 = sGAimDR;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimDR;
                if (set == 1) aspr1 = sVAimDR;
                if (set == 2) aspr1 = sGAimDR;
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimDR;
                if (set == 1) aspr1 = sVAimDR;
                if (set == 2) aspr1 = sGAimDR;
                asprx = -1;
                aspry = -21;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimUpR;
                if (set == 1) aspr1 = sVAimUpR;
                if (set == 2) aspr1 = sGAimUpR;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimUpR;
                if (set == 1) aspr1 = sVAimUpR;
                if (set == 2) aspr1 = sGAimUpR;
                asprx = -2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimUpR;
                if (set == 1) aspr1 = sVAimUpR;
                if (set == 2) aspr1 = sGAimUpR;
                asprx = -1;
                aspry = -21;
            }
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimL;
                if (set == 1) aspr1 = sVAimL;
                if (set == 2) aspr1 = sGAimL;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimLst;
                if (set == 1) aspr1 = sVAimLst;
                if (set == 2) aspr1 = sGAimLst;
                asprx = 2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimLst;
                if (set == 1) aspr1 = sVAimLst;
                if (set == 2) aspr1 = sGAimLst;
                asprx = 1;
                aspry = -21;
            }
        }
        if (aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimUL;
                if (set == 1) aspr1 = sVAimUL;
                if (set == 2) aspr1 = sGAimUL;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimUL;
                if (set == 1) aspr1 = sVAimUL;
                if (set == 2) aspr1 = sGAimUL;
                asprx = 2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimUL;
                if (set == 1) aspr1 = sVAimUL;
                if (set == 2) aspr1 = sGAimUL;
                asprx = 1;
                aspry = -21;
            }
        }
        if (aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimDLcr;
                if (set == 1) aspr1 = sVAimDLcr;
                if (set == 2) aspr1 = sGAimDLcr;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimDL;
                if (set == 1) aspr1 = sVAimDL;
                if (set == 2) aspr1 = sGAimDL;
                asprx = 1;
                aspry = -16;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimDL;
                if (set == 1) aspr1 = sVAimDL;
                if (set == 2) aspr1 = sGAimDL;
                aspry = -20;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                if (set == 0) aspr1 = sAimUpL;
                if (set == 1) aspr1 = sVAimUpL;
                if (set == 2) aspr1 = sGAimUpL;
                aspry = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                if (set == 0) aspr1 = sAimUpL;
                if (set == 1) aspr1 = sVAimUpL;
                if (set == 2) aspr1 = sGAimUpL;
                asprx = 2;
                aspry = -17;
            }
            if (image_index >= 2 && image_index < 3) {
                if (set == 0) aspr1 = sAimUpL;
                if (set == 1) aspr1 = sVAimUpL;
                if (set == 2) aspr1 = sGAimUpL;
                asprx = 1;
                aspry = -21;
            }
        }
    } // if (facing == LEFT)
} // if ((state == STANDING || state == RUNNING) && landing == 1)
if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 0) {
    if (facing == RIGHT) {
        if (aimdirection == 0) {
            if (set == 0) aspr1 = sAimR;
            if (set == 1) aspr1 = sVAimR;
            if (set == 2) aspr1 = sGAimR;
            aspry = -22;
        }
        if (aimdirection == 2) {
            if (set == 0) aspr1 = sAimUR;
            if (set == 1) aspr1 = sVAimUR;
            if (set == 2) aspr1 = sGAimUR;
            aspry = -22;
        }
        if (aimdirection == 4) {
            if (set == 0) aspr1 = sAimDR;
            if (set == 1) aspr1 = sVAimDR;
            if (set == 2) aspr1 = sGAimDR;
            aspry = -22;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sAimUpR;
            if (set == 1) aspr1 = sVAimUpR;
            if (set == 2) aspr1 = sGAimUpR;
            aspry = -23;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 1) {
            if (set == 0) aspr1 = sAimL;
            if (set == 1) aspr1 = sVAimL;
            if (set == 2) aspr1 = sGAimL;
            aspry = -22;
        }
        if (aimdirection == 3) {
            if (set == 0) aspr1 = sAimUL;
            if (set == 1) aspr1 = sVAimUL;
            if (set == 2) aspr1 = sGAimUL;
            aspry = -22;
        }
        if (aimdirection == 5) {
            if (set == 0) aspr1 = sAimDL;
            if (set == 1) aspr1 = sVAimDL;
            if (set == 2) aspr1 = sGAimDL;
            aspry = -22;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sAimUpL;
            if (set == 1) aspr1 = sVAimUpL;
            if (set == 2) aspr1 = sGAimUpL;
            aspry = -23;
        }
    } // if (facing == LEFT)
} // if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 0)
if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 1) {
    if (facing == RIGHT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = sTAimR;
            if (set == 1) aspr1 = sVTAimR;
            if (set == 2) aspr1 = sGTAimR;
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = sTAimUR;
            if (set == 1) aspr1 = sVTAimUR;
            if (set == 2) aspr1 = sGTAimUR;
            asprx = -2;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = sTAimDR;
            if (set == 1) aspr1 = sVTAimDR;
            if (set == 2) aspr1 = sGTAimDR;
            asprx = -1;
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sTAimUpR;
            if (set == 1) aspr1 = sVTAimUpR;
            if (set == 2) aspr1 = sGTAimUpR;
            aspry = -25;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (aimdirection == 0 || aimdirection == 1) {
            if (set == 0) aspr1 = sTAimL;
            if (set == 1) aspr1 = sVTAimL;
            if (set == 2) aspr1 = sGTAimL;
            aspry = -23;
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (set == 0) aspr1 = sTAimUL;
            if (set == 1) aspr1 = sVTAimUL;
            if (set == 2) aspr1 = sGTAimUL;
            asprx = -3;
            aspry = -23;
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (set == 0) aspr1 = sTAimDL;
            if (set == 1) aspr1 = sVTAimDL;
            if (set == 2) aspr1 = sGTAimDL;
            aspry = -23;
        }
        if (aimdirection == 6) {
            if (set == 0) aspr1 = sTAimUpL;
            if (set == 1) aspr1 = sVTAimUpL;
            if (set == 2) aspr1 = sGTAimUpL;
            asprx = -1;
            aspry = -25;
        }
    } // if (facing == LEFT)
} // if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 1)
aspr2 = sBlank;
aspr2x = 0;
aspr2y = 0;
aspr2a = 0;
if (facing == RIGHT && morphing == 0 && unmorphing == 0) {
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 14;
            aspr2y = -27;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            aspr2x = 10;
            aspr2y = -37;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2x = 11;
            aspr2y = -19;
            aspr2a = -90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -42;
            aspr2a = 90;
        }
    }
    if (state == STANDING && landing == 1 && turning == 0) {
        if (aimdirection == 0) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -13;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -20;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -24;
            }
        }
        if (aimdirection == 2) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 7;
                aspr2y = -31;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 8;
                aspr2y = -35;
            }
        }
        if (aimdirection == 4) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -8;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -13;
                aspr2a = -90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -17;
                aspr2a = -90;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = 3;
                aspr2y = -31;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 1;
                aspr2y = -36;
                aspr2a = 90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -40;
                aspr2a = 90;
            }
        }
    } // if (state == STANDING && landing == 1 && turning == 0)
    if (state == DUCKING && turning == 0) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 13;
            aspr2y = -13;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            aspr2x = 9;
            aspr2y = -26;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2x = 11;
            aspr2y = -8;
            aspr2a = -90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -32;
            aspr2a = 90;
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 0) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 12;
            aspr2y = -23;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            aspr2x = 9;
            aspr2y = -36;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2x = 11;
            aspr2y = -18;
            aspr2a = -90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -42;
            aspr2a = 90;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslR;
            aspr2x = 3;
            aspr2y = -7;
            aspr2a = -90;
        }
    } // if (state == JUMPING && vjump == 1 && turning == 0)
    if (state == RUNNING && turning == 0 && walking == 0) {
        if (aimdirection == 0) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -28;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = 15;
                aspr2y = -29;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslR;
                aspr2x = 16;
                aspr2y = -28;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -28;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -27;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslR;
                aspr2x = 13;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -29;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslR;
                aspr2x = 15;
                aspr2y = -29;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslR;
                aspr2x = 14;
                aspr2y = -28;
            }
        } // if (aimdirection == 0)
        if (aimdirection == 2) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -37;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -38;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -39;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = 12;
                aspr2y = -38;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -38;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -37;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -38;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -39;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -39;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -38;
            }
        } // if (aimdirection == 2)
        if (aimdirection == 4) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -19;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -21;
                aspr2a = -90;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = 12;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -19;
                aspr2a = -90;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = 9;
                aspr2y = -20;
                aspr2a = -90;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -21;
                aspr2a = -90;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = 11;
                aspr2y = -21;
                aspr2a = -90;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = 10;
                aspr2y = -20;
                aspr2a = -90;
            }
        } // if (aimdirection == 4)
    } // if (state == RUNNING && turning == 0 && walking == 0)
    if (state == RUNNING && turning == 0 && walking == 1) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 14;
                aspr2y = -26;
            }
        } // if (aimdirection == 0)
        if (aimdirection == 2) {
            aspr2 = sArmMslUR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 11;
                aspr2y = -35;
            }
        } // if (aimdirection == 2)
        if (aimdirection == 4) {
            aspr2 = sArmMslUR;
            aspr2a = -90;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 11;
                aspr2y = -17;
            }
        } // if (aimdirection == 4)
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2a = 90;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = 3;
                aspr2y = -41;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = 3;
                aspr2y = -40;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = 3;
                aspr2y = -40;
            }
        } // if (aimdirection == 6)
    } // if (state == RUNNING && turning == 0 && walking == 1)
    if (state == GRIP && turning == 0) {
        if (aimdirection == 6) {
            aspr2 = sArmMslL;
            aspr2x = -7;
            aspr2y = -36;
            aspr2a = 90;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUL;
            aspr2x = -17;
            aspr2y = -27;
            aspr2a = 90;
        }
        if (aimdirection == 1) {
            aspr2 = sArmMslL;
            aspr2x = -20;
            aspr2y = -18;
            aspr2a = 180;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUL;
            aspr2x = -15;
            aspr2y = -9;
            aspr2a = 180;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslL;
            aspr2x = -5;
            aspr2y = -4;
            aspr2a = -90;
        }
        if (aimdirection == 0) {
            aspr2 = sArmMslL;
            aspr2x = -3;
            aspr2y = -5;
            aspr2a = -90;
        }
    } // if (state == GRIP && turning == 0)
    if (state == GRIP && turning == 1) {
        aspr2 = sArmMslUL;
        aspr2x = -11;
        aspr2y = -10;
        aspr2a = 200;
    }
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = -1;
                aspr2y = -42;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -42;
                aspr2a = 90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -28;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -28;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -34;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -34;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -15;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -15;
            }
        }
    } // if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    if (state == JUMPING && vjump == 1 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = -1;
                aspr2y = -43;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -43;
                aspr2a = 90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -27;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -33;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -33;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -14;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -14;
            }
        }
    } // if (state == JUMPING && vjump == 1 && turning == 1)
    if (state == DUCKING && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = -1;
                aspr2y = -33;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = 2;
                aspr2y = -33;
                aspr2a = 90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -12;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -26;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -6;
                aspr2y = -9;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 6;
                aspr2y = -9;
            }
        }
    } // if (state == DUCKING && turning == 1)
    if (state == CLIMBING) {
        if (statetime == 0) {
            aspr2 = sArmMslL;
            aspr2x = -4;
            aspr2y = -5;
            aspr2a = -90;
        }
        if (statetime >= 1 && statetime <= 3) {
            aspr2 = sArmMslUR;
            aspr2x = 2;
            aspr2y = -11;
            aspr2a = -90;
        }
        if (statetime >= 4 && statetime <= 6) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -10;
            aspr2a = -90;
        }
        if (statetime == 7) {
            aspr2 = sArmMslUR;
            aspr2x = 6;
            aspr2y = -10;
            aspr2a = -90;
        }
        if (statetime == 8) {
            aspr2 = sArmMslUR;
            aspr2x = 6;
            aspr2y = -11;
            aspr2a = -90;
        }
        if (statetime == 9) {
            aspr2 = sArmMslUR;
            aspr2x = 6;
            aspr2y = -12;
            aspr2a = -90;
        }
        if (statetime == 10) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -9;
            aspr2a = -90;
        }
        if (statetime == 11) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -7;
            aspr2a = -90;
        }
        if (statetime == 12) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -5;
            aspr2a = -90;
        }
        if (statetime == 13) {
            aspr2 = sArmMslUR;
            aspr2x = 5;
            aspr2y = -3;
            aspr2a = -90;
        }
    } // if (state == CLIMBING)
    if (state == BRAKING && sjball == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2 = sArmMslUR;
            aspr2x = -2;
            aspr2y = -14;
            aspr2a = -90;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2 = sArmMslUR;
            aspr2x = 0;
            aspr2y = -15;
            aspr2a = -90;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2 = sArmMslUR;
            aspr2x = 8;
            aspr2y = -18;
            aspr2a = -90;
        }
    }
    if (state == JUMPING && vjump == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = 8;
            aspr2y = -18;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = 5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = 2;
            aspr2y = -2;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = -5;
            aspr2y = -10;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = -8;
            aspr2y = -18;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = -5;
            aspr2y = -24;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = -2;
            aspr2y = -28;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = 5;
            aspr2y = -24;
        }
    } // if (state == JUMPING && vjump == 0)
    if (state == JUMPING && walljumping == 1) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -6;
            aspr2y = -10;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = -5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = -3;
            aspr2y = -11;
        }
    }
    if (state == SJSTART) {
        if (image_index >= 0 && image_index < 3) {
            aspr2x = 1;
            aspr2y = -15;
        }
        if (image_index >= 3) {
            aspr2x = 1;
            aspr2y = -12;
        }
    }
    if (state == SUPERJUMP && sjdir == 0) {
        if (image_index < 2) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = -6;
            aspr2y = -12;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = -9;
            aspr2y = -12;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = -6;
            aspr2y = -12;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = 5;
            aspr2y = -12;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = 7;
            aspr2y = -12;
        }
        if (image_index >= 8 && image_index < 9) {
            aspr2x = 5;
            aspr2y = -12;
        }
    } // if (state == SUPERJUMP && sjdir == 0)
    if (state == SUPERJUMP && (sjdir == 1 || sjdir == 3)) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -9;
            aspr2y = -13;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = -12;
            aspr2y = -14;
        }
        if (image_index >= 2) {
            aspr2x = -6;
            aspr2y = -15;
        }
    }
    if (state == SJEND) {
        if (statetime < 10) {
            if (sjdir == 0) {
                aspr2x = 0;
                aspr2y = -12;
            }
            if (sjdir == 1 || sjdir == 3) {
                aspr2x = -12;
                aspr2y = -14;
            }
        }
        if (statetime >= 10 && statetime < 28) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 8;
                aspr2y = -18;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = 5;
                aspr2y = -10;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2x = 2;
                aspr2y = -2;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2x = -5;
                aspr2y = -10;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2x = -8;
                aspr2y = -18;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2x = -5;
                aspr2y = -24;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2x = -2;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2x = 5;
                aspr2y = -24;
            }
        } // if (statetime >= 10 && statetime < 28)
        if (statetime >= 28) {
            aspr2x = 1;
            aspr2y = -15;
        }
    } // if (state == SJEND)
    if (state == GRABBEDQUEEN) {
        if (aimdirection == 0) {
            aspr2 = sArmMslR;
            aspr2x = 14;
            aspr2y = -27;
        }
    }
} // if (facing == RIGHT && morphing == 0 && unmorphing == 0)
if (facing == LEFT && morphing == 0 && unmorphing == 0) {
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            aspr2x = -14;
            aspr2y = -27;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            aspr2x = -10;
            aspr2y = -37;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2x = -11;
            aspr2y = -19;
            aspr2a = 90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = -3;
            aspr2y = -41;
            aspr2a = -90;
        }
    }
    if (state == STANDING && landing == 1 && turning == 0) {
        if (aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = -12;
                aspr2y = -13;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -12;
                aspr2y = -20;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -24;
            }
        }
        if (aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -7;
                aspr2y = -31;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -8;
                aspr2y = -35;
            }
        }
        if (aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -7;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -12;
                aspr2a = 90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -16;
                aspr2a = 90;
            }
        }
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = -4;
                aspr2y = -31;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -2;
                aspr2y = -36;
                aspr2a = -90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = -3;
                aspr2y = -40;
                aspr2a = -90;
            }
        }
    } // if (state == STANDING && landing == 1 && turning == 0)
    if (state == DUCKING && turning == 0) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            aspr2x = -12;
            aspr2y = -13;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            aspr2x = -9;
            aspr2y = -26;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2x = -11;
            aspr2y = -8;
            aspr2a = 90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = -4;
            aspr2y = -32;
            aspr2a = -90;
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 0) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            aspr2x = -12;
            aspr2y = -23;
        }
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            aspr2x = -9;
            aspr2y = -36;
        }
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2x = -11;
            aspr2y = -18;
            aspr2a = 90;
        }
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2x = -4;
            aspr2y = -42;
            aspr2a = -90;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslR;
            aspr2x = -4;
            aspr2y = -7;
            aspr2a = 90;
        }
    } // if (state == JUMPING && vjump == 1 && turning == 0)
    if (state == RUNNING && turning == 0 && walking == 0) {
        if (aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -28;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslR;
                aspr2x = -15;
                aspr2y = -29;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslR;
                aspr2x = -16;
                aspr2y = -28;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -28;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -27;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslR;
                aspr2x = -13;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -29;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslR;
                aspr2x = -15;
                aspr2y = -29;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslR;
                aspr2x = -14;
                aspr2y = -28;
            }
        } // if (aimdirection == 1)
        if (aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -37;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -38;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -39;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = -12;
                aspr2y = -38;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -38;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -37;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -38;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -39;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -39;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -38;
            }
        } // if (aimdirection == 3)
        if (aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -19;
                aspr2a = 90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -21;
                aspr2a = 90;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2 = sArmMslUR;
                aspr2x = -12;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -19;
                aspr2a = 90;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2 = sArmMslUR;
                aspr2x = -9;
                aspr2y = -20;
                aspr2a = 90;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -21;
                aspr2a = 90;
            }
            if (image_index >= 8 && image_index < 9) {
                aspr2 = sArmMslUR;
                aspr2x = -11;
                aspr2y = -21;
                aspr2a = 90;
            }
            if (image_index >= 9 && image_index < 10) {
                aspr2 = sArmMslUR;
                aspr2x = -10;
                aspr2y = -20;
                aspr2a = 90;
            }
        } // if (aimdirection == 5)
    } // if (state == RUNNING && turning == 0 && walking == 0)
    if (state == RUNNING && turning == 0 && walking == 1) {
        if (aimdirection == 1) {
            aspr2 = sArmMslR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -14;
                aspr2y = -27;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -14;
                aspr2y = -26;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -14;
                aspr2y = -26;
            }
        } // if (aimdirection == 1)
        if (aimdirection == 3) {
            aspr2 = sArmMslUR;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -11;
                aspr2y = -36;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -11;
                aspr2y = -35;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -11;
                aspr2y = -35;
            }
        } // if (aimdirection == 3)
        if (aimdirection == 5) {
            aspr2 = sArmMslUR;
            aspr2a = 90;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -11;
                aspr2y = -18;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -11;
                aspr2y = -17;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -11;
                aspr2y = -17;
            }
        } // if (aimdirection == 5)
        if (aimdirection == 6) {
            aspr2 = sArmMslR;
            aspr2a = 270;
            if (abs(image_index) >= 0 && abs(image_index) < 1) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8) {
                aspr2x = -4;
                aspr2y = -41;
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9) {
                aspr2x = -4;
                aspr2y = -40;
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10) {
                aspr2x = -4;
                aspr2y = -40;
            }
        } // if (aimdirection == 6)
    } // if (state == RUNNING && turning == 0 && walking == 1)
    if (state == GRIP && turning == 0) {
        if (aimdirection == 6) {
            aspr2 = sArmMslL;
            aspr2x = 7;
            aspr2y = -35;
            aspr2a = -90;
        }
        if (aimdirection == 2) {
            aspr2 = sArmMslUL;
            aspr2x = 17;
            aspr2y = -26;
            aspr2a = -90;
        }
        if (aimdirection == 0) {
            aspr2 = sArmMslL;
            aspr2x = 20;
            aspr2y = -17;
            aspr2a = 180;
        }
        if (aimdirection == 4) {
            aspr2 = sArmMslUL;
            aspr2x = 15;
            aspr2y = -8;
            aspr2a = 180;
        }
        if (aimdirection == 7) {
            aspr2 = sArmMslL2;
            aspr2x = 5;
            aspr2y = -3;
            aspr2a = 90;
        }
        if (aimdirection == 1) {
            aspr2 = sArmMslL3;
            aspr2x = 4;
            aspr2y = -4;
            aspr2a = 90;
        }
    } // if (state == GRIP && turning == 0)
    if (state == GRIP && turning == 1) {
        aspr2 = sArmMslUL;
        aspr2x = 11;
        aspr2y = -10;
        aspr2a = -200;
    }
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = 2;
                aspr2y = -41;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -1;
                aspr2y = -41;
                aspr2a = -90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -28;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -28;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -34;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -34;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -15;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -15;
            }
        }
    } // if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    if (state == JUMPING && vjump == 1 && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = 0;
                aspr2y = -42;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -3;
                aspr2y = -42;
                aspr2a = -90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -27;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -27;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -33;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -33;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -14;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -14;
            }
        }
    } // if (state == JUMPING && vjump == 1 && turning == 1)
    if (state == DUCKING && turning == 1) {
        if (aimdirection == 6) {
            if (image_index >= 0 && image_index < 1) {
                aspr2 = sArmMslL;
                aspr2x = 0;
                aspr2y = -32;
                aspr2a = -90;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2 = sArmMslR;
                aspr2x = -3;
                aspr2y = -32;
                aspr2a = -90;
            }
        }
        if (aimdirection == 0 || aimdirection == 1) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -12;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -12;
            }
        }
        if (aimdirection == 2 || aimdirection == 3) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -26;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -26;
            }
        }
        if (aimdirection == 4 || aimdirection == 5) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = 6;
                aspr2y = -9;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -6;
                aspr2y = -9;
            }
        }
    } // if (state == DUCKING && turning == 1)
    if (state == CLIMBING) {
        if (statetime == 0) {
            aspr2 = sArmMslL3;
            aspr2x = 4;
            aspr2y = -6;
            aspr2a = 90;
        }
        if (statetime >= 4 && statetime <= 6) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -10;
            aspr2a = 90;
        }
        if (statetime == 7) {
            aspr2 = sArmMslUR;
            aspr2x = -8;
            aspr2y = -10;
            aspr2a = 90;
        }
        if (statetime == 8) {
            aspr2 = sArmMslUR;
            aspr2x = -8;
            aspr2y = -11;
            aspr2a = 90;
        }
        if (statetime == 9) {
            aspr2 = sArmMslUR;
            aspr2x = -8;
            aspr2y = -12;
            aspr2a = 90;
        }
        if (statetime == 10) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -9;
            aspr2a = 90;
        }
        if (statetime == 11) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -7;
            aspr2a = 90;
        }
        if (statetime == 12) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -5;
            aspr2a = 90;
        }
        if (statetime == 13) {
            aspr2 = sArmMslUR;
            aspr2x = -7;
            aspr2y = -3;
            aspr2a = 90;
        }
    } // if (state == CLIMBING)
    if (state == BRAKING && sjball == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -2;
            aspr2y = -14;
            aspr2a = -90;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2 = sArmMslUR;
            aspr2x = -9;
            aspr2y = -16;
            aspr2a = 90;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2 = sArmMslUR;
            aspr2x = -10;
            aspr2y = -18;
            aspr2a = 90;
        }
    }
    if (state == JUMPING && vjump == 0) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = -8;
            aspr2y = -18;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = -5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = -2;
            aspr2y = -2;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = 5;
            aspr2y = -10;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = 8;
            aspr2y = -18;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = 5;
            aspr2y = -24;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = 2;
            aspr2y = -28;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = -5;
            aspr2y = -24;
        }
    } // if (state == JUMPING && vjump == 0)
    if (state == JUMPING && walljumping == 1) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = 6;
            aspr2y = -10;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = 5;
            aspr2y = -10;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = 3;
            aspr2y = -11;
        }
    }
    if (state == SJSTART) {
        if (image_index >= 0 && image_index < 3) {
            aspr2x = -1;
            aspr2y = -15;
        }
        if (image_index >= 3) {
            aspr2x = -1;
            aspr2y = -12;
        }
    }
    if (state == SUPERJUMP && sjdir == 0) {
        if (image_index < 2) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 2 && image_index < 3) {
            aspr2x = 6;
            aspr2y = -12;
        }
        if (image_index >= 3 && image_index < 4) {
            aspr2x = 9;
            aspr2y = -12;
        }
        if (image_index >= 4 && image_index < 5) {
            aspr2x = 6;
            aspr2y = -12;
        }
        if (image_index >= 5 && image_index < 6) {
            aspr2x = 0;
            aspr2y = -12;
        }
        if (image_index >= 6 && image_index < 7) {
            aspr2x = -5;
            aspr2y = -12;
        }
        if (image_index >= 7 && image_index < 8) {
            aspr2x = -7;
            aspr2y = -12;
        }
        if (image_index >= 8 && image_index < 9) {
            aspr2x = -5;
            aspr2y = -12;
        }
    } // if (state == SUPERJUMP && sjdir == 0)
    if (state == SUPERJUMP && (sjdir == 2 || sjdir == 4)) {
        if (image_index >= 0 && image_index < 1) {
            aspr2x = 9;
            aspr2y = -13;
        }
        if (image_index >= 1 && image_index < 2) {
            aspr2x = 12;
            aspr2y = -14;
        }
        if (image_index >= 2) {
            aspr2x = 1;
            aspr2y = -17;
        }
    }
    if (state == SJEND) {
        if (statetime < 10) {
            if (sjdir == 0) {
                aspr2x = 0;
                aspr2y = -12;
            }
            if (sjdir == 2 || sjdir == 4) {
                aspr2x = 12;
                aspr2y = -14;
            }
        }
        if (statetime >= 10 && statetime < 28) {
            if (image_index >= 0 && image_index < 1) {
                aspr2x = -8;
                aspr2y = -18;
            }
            if (image_index >= 1 && image_index < 2) {
                aspr2x = -5;
                aspr2y = -10;
            }
            if (image_index >= 2 && image_index < 3) {
                aspr2x = -2;
                aspr2y = -2;
            }
            if (image_index >= 3 && image_index < 4) {
                aspr2x = 5;
                aspr2y = -10;
            }
            if (image_index >= 4 && image_index < 5) {
                aspr2x = 8;
                aspr2y = -18;
            }
            if (image_index >= 5 && image_index < 6) {
                aspr2x = 5;
                aspr2y = -24;
            }
            if (image_index >= 6 && image_index < 7) {
                aspr2x = 2;
                aspr2y = -28;
            }
            if (image_index >= 7 && image_index < 8) {
                aspr2x = -5;
                aspr2y = -24;
            }
        } // if (statetime >= 10 && statetime < 28)
        if (statetime >= 28) {
            aspr2x = -1;
            aspr2y = -15;
        }
    } // if (state == SJEND)
    if (state == GRABBEDQUEEN) {
        if (aimdirection == 1 && image_index == 2) {
            aspr2 = sArmMslR;
            aspr2x = -17;
            aspr2y = -25;
        }
    }
} // if (facing == LEFT && morphing == 0 && unmorphing == 0)
if (global.screwattack == 1 && state == JUMPING && vjump == 0 && walljumping == 0 && (inwater == 0 || global.currentsuit >= 2)) {
    if (fxtimer == 0) image_blend = make_color_rgb(120, 0, 160);
    if (fxtimer == 2) image_blend = make_color_rgb(150, 200, 150);
    if (fxtimer == 4) image_blend = make_color_rgb(180, 255, 200);
    instance_create(x, y, oScrewAttack);
    mytrail = instance_create(x, y, oFXTrail);
    mytrail.sprite_index = sprite_index;
    mytrail.image_speed = image_speed;
    mytrail.image_index = image_index;
    mytrail.image_alpha = 0.3 + fxtimer * 0.1;
    mytrail.additive = 1;
    mytrail.fadespeed = 0.4;
    mytrail.depth = -10;
    if (facing == LEFT) mytrail.image_xscale = -1;
    mytrail = instance_create(x, y - 15, oFXTrail);
    mytrail.sprite_index = sScrewSpark;
    mytrail.image_index = round(random(2));
    mytrail.image_alpha = 1 + fxtimer * 0.1;
    mytrail.image_blend = make_color_rgb(50 + random(200), 255, 50 + random(200));
    if (random(10) < 1) mytrail.image_blend = c_white;
    mytrail.additive = 1;
    mytrail.fadespeed = 0.5;
    mytrail.depth = -11;
    if (random(10) < 5) mytrail.image_xscale = -1;
    if (random(10) < 5) mytrail.image_yscale = -1;
} else {
    image_blend = c_white;
} // if (global.screwattack == 1 && state == JUMPING && ...) else
if (state == AIRBALL || state == BALL && charge == 0) {
    if (!instance_exists(oMBTrail)) instance_create(x, y, oMBTrail);
}
if (state == JUMPING && global.spacejump == 1 && vjump == 0 && dash == 0 && charge == 0 && speedboost == 0 && (inwater == 0 || global.currentsuit >= 2)) {
    mytrail = instance_create(x, y - 17, oSpaceJumpTrail);
    mytrail.image_angle = -image_index * 45;
    if (facing == LEFT) mytrail.image_xscale = -1;
}
if (speedboost == 1 || charge > 0 || state == SJSTART || state == SUPERJUMP || state == SJEND && statetime < 10) {
    if (fxtimer == 0) instance_create(x, y, oCharacterTrail);
    if (!instance_exists(oSBTrail)) instance_create(x, y, oSBTrail);
}
if (state == SUPERJUMP || speedboost || state == SJSTART && statetime > 16) {
    mysb = instance_create(x, y, oSpeedBoost);
    if (facing == RIGHT) {
        if (state == SJSTART) {
            if (sjdir == 0) {
                mysb.image_yscale = 1.2;
            } else {
                mysb.x = x + 8;
                mysb.y = y - 2;
                if (sjball == 0) mysb.image_yscale = 1;
                if (sjball == 1) mysb.image_yscale = 0.4;
            }
        }
        if (state == SUPERJUMP) {
            if (sjball == 0) {
                if (xVel != 0) mysb.image_xscale = 1.8;
                if (yVel == 0) mysb.image_yscale = 0.8;
            }
            if (sjball == 1) {
                if (xVel != 0) mysb.image_xscale = 2;
                if (yVel != 0 && xVel == 0) {
                    mysb.image_yscale = 0.7;
                } else mysb.image_yscale = 0.6;
                if (yVel == 0) mysb.image_yscale = 0.4;
            }
        }
        if (state == JUMPING) {
            mysb.x = x + 8;
            mysb.y = y - 4;
            mysb.image_yscale = 1;
            mysb.image_xscale = 2.2;
            mysb2 = instance_create(x + 4, y + 6, oSpeedBoost);
            mysb2.image_xscale = 1.8;
            mysb2.image_yscale = 0.2;
        }
        if (state == AIRBALL && speedboost) {
            mysb.x = x + xVel;
            mysb.y = y + yVel * 2;
            mysb.image_yscale = 0.4;
            mysb.image_xscale = 2;
        }
        if ((state == RUNNING || state == BALL) && speedboost) {
            mysb.x = x + 8;
            mysb.y = y - 2;
            mysb.image_yscale = 0.8;
            if (state == BALL) mysb.image_yscale = 0.4;
            mysb2 = instance_create(x - 12, y + 2, oSpeedBoost);
            mysb2.image_xscale = 0.1;
            mysb2.image_yscale = 0.1;
        }
    } // if (facing == RIGHT)
    if (facing == LEFT) {
        if (state == SJSTART) {
            if (sjdir == 0) {
                mysb.image_yscale = 1.2;
            } else {
                mysb.x = x - 8;
                mysb.y = y - 2;
                if (sjball == 0) mysb.image_yscale = 1;
                if (sjball == 1) mysb.image_yscale = 0.4;
            }
        }
        if (state == SUPERJUMP) {
            if (sjball == 0) {
                if (xVel != 0) mysb.image_xscale = 1.8;
                if (yVel == 0) mysb.image_yscale = 0.8;
            }
            if (sjball == 1) {
                if (xVel != 0) mysb.image_xscale = 2;
                if (yVel != 0 && xVel == 0) {
                    mysb.image_yscale = 0.7;
                } else mysb.image_yscale = 0.6;
                if (yVel == 0) mysb.image_yscale = 0.4;
            }
        }
        if (state == JUMPING) {
            mysb.x = x - 8;
            mysb.y = y - 4;
            mysb.image_yscale = 1;
            mysb.image_xscale = 2.2;
            mysb2 = instance_create(x - 4, y + 6, oSpeedBoost);
            mysb2.image_xscale = 1.8;
            mysb2.image_yscale = 0.2;
        }
        if (state == AIRBALL && speedboost) {
            mysb.x = x + xVel;
            mysb.y = y + yVel * 2;
            mysb.image_yscale = 0.4;
            mysb.image_xscale = 2;
        }
        if ((state == RUNNING || state == BALL) && speedboost) {
            mysb.x = x - 8;
            mysb.y = y - 2;
            mysb.image_yscale = 0.8;
            if (state == BALL) mysb.image_yscale = 0.4;
            mysb2 = instance_create(x + 12, y + 2, oSpeedBoost);
            mysb2.image_xscale = 0.1;
            mysb2.image_yscale = 0.1;
        }
    } // if (facing == LEFT)
} // if (state == SUPERJUMP || speedboost || state == SJSTART && statetime > 16)
if (state == SUPERJUMP && fxtimer == 0 && sjball == 0) {
    if (sjdir == 0) {
        myspark = instance_create(x, y - 32, oFXAnimSpark);
        myspark.image_angle = 90;
        myspark.additive = 1;
    }
    if (sjdir == 1) myspark = instance_create(x + 12, y - 12, oFXAnimSpark);
    if (sjdir == 3) {
        myspark = instance_create(x + 12, y - 16, oFXAnimSpark);
        myspark.image_angle = 20;
    }
    if (sjdir == 2) myspark = instance_create(x - 12, y - 12, oFXAnimSpark);
    if (sjdir == 4) {
        myspark = instance_create(x - 12, y - 16, oFXAnimSpark);
        myspark.image_angle = 340;
    }
    myspark.image_speed = 1;
    myspark.additive = 1;
    if (facing == LEFT && sjdir != 0) myspark.image_xscale = -1;
}
if (state == SUPERJUMP && fxtimer == 0 && sjball == 1) {
    if (sjdir == 0) {
        myspark = instance_create(x, y - 15, oFXAnimSpark);
        myspark.image_angle = 90;
        myspark.additive = 1;
    }
    if (sjdir == 1) myspark = instance_create(x + 10, y - 6, oFXAnimSpark);
    if (sjdir == 3) {
        myspark = instance_create(x + 10, y - 8, oFXAnimSpark);
        myspark.image_angle = 20;
    }
    if (sjdir == 2) myspark = instance_create(x - 10, y - 6, oFXAnimSpark);
    if (sjdir == 4) {
        myspark = instance_create(x - 10, y - 8, oFXAnimSpark);
        myspark.image_angle = 340;
    }
    myspark.image_speed = 1;
    myspark.additive = 1;
    if (facing == LEFT && sjdir != 0) myspark.image_xscale = -1;
}
if (state == RUNNING && speedboost && (fxtimer == 0 || fxtimer == 2 || fxtimer == 4)) myspark = instance_create(x, y - random(36), oSBSpark);
if (onfire && fxtimer == 0) {
    if (mask_index == sMask1) {
        expl = instance_create(x + random_range(-8, 8), y - random(28), oFXAnimSpark);
    } else expl = instance_create(x + random_range(-8, 8), y - random(16), oFXAnimSpark);
    expl.image_speed = 0.5;
    expl.additive = 0;
    expl.sprite_index = sExpl1;
    expl.depth = -10;
    expl.image_xscale = 0.5;
    expl.image_yscale = 0.5;
}
