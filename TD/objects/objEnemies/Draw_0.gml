draw_self();

hp = (HP / MAXHP) * 100;

draw_healthbar(x-15, y-20, x+15, y-15, hp, c_black, c_red, c_green, 0, true, false);