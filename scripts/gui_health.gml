/// gui_health()
if (global.playerhealth < 0) global.playerhealth = 0;
guih = ceil(global.playerhealth);
if (global.playerhealth >= 100) guih = global.playerhealth - 100;
if (global.playerhealth >= 200) guih = global.playerhealth - 200;
if (global.playerhealth >= 300) guih = global.playerhealth - 300;
if (global.playerhealth >= 400) guih = global.playerhealth - 400;
if (global.playerhealth >= 500) guih = global.playerhealth - 500;
if (global.playerhealth >= 600) guih = global.playerhealth - 600;
if (global.playerhealth >= 700) guih = global.playerhealth - 700;
if (global.playerhealth >= 800) guih = global.playerhealth - 800;
if (global.playerhealth >= 900) guih = global.playerhealth - 900;
if (global.playerhealth >= 1000) guih = global.playerhealth - 1000;
if (ceil(guih) == 100) guih = 0;
guih = string(ceil(guih));
if (real(guih) < 10) guih = "0" + guih;
return guih;
