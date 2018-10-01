

draw_set_color(outlineColor);

draw_text(x-1, y, dmg);
draw_text(x+1, y, dmg);
draw_text(x, y-1, dmg);
draw_text(x, y+1, dmg);

draw_set_color(inlineColor);
draw_text(x, y, dmg);
//draw_text_color(x, y, dmg, outlineColor, outlineColor, inlineColor, inlineColor, 1);
