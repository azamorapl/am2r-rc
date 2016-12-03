/// spawn_rnd_pickup(chance)
if (random(100) < argument0) {
    pickup = floor(random(4));
    if (pickup == 0) {
        if (global.playerhealth < global.maxhealth && instance_number(oHPickup) < 6) {
            instance_create(x, y, oHPickup);
        } else pickup = 2;
    }
    if (pickup == 1) {
        if (global.playerhealth < global.maxhealth && instance_number(oHPickupBig) < 3) {
            instance_create(x, y, oHPickupBig);
        } else pickup = 2;
    }
    if (pickup == 2) {
        if (global.missiles < global.maxmissiles && global.maxmissiles > 0 && instance_number(oMPickup) < 8) {
            instance_create(x, y, oMPickup);
        } else pickup = 3;
    }
    if (pickup == 3) {
        if (global.smissiles < global.maxsmissiles && global.maxsmissiles > 0 && instance_number(oSMPickup) < 2) instance_create(x, y, oSMPickup);
    }
}
