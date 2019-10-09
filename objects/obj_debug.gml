//CREATE

debugmode = false;



//STEP

toggler = keyboard_check_pressed(vk_f2);

if (toggler) debugmode = !debugmode;



//DRAW

if (debugmode) {
	draw_set_color(c_red);
	var gameW = global.gameWidth;
	
	//Current Room
	draw_text(				16,				16,			"Current Room: ");
	draw_text(				144,			16,			room_get_name(room));
	
	//Time in the game loop
	draw_text(				16,				32,			"Current Game Time: ");
	draw_text(				216,			32,			global.currentGameDur);
	
	//The Mouse coordinates
	draw_text(				16,				48,			"Mouse X , Y: ");
	draw_text(				216,			48,			string(mouse_x) + " , " + string(mouse_y));
	
	//In game stats
	draw_text(				gameW-200,		16,			"Cash: ");
	draw_text(				gameW-130,		16,			global.cash);
	

	draw_set_color(c_white);

}
