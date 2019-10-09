//CREATE

global.gameWidth = 540;
global.gameHeight = 960;
aspect = display_get_width() / display_get_height();




//STEP

if (room == room0) room_goto(1);



//if the game loop is running
if (room == rm_gameRoom) {
	
	
	
	
	//if TIME IS UP: wrap up the game
	if (global.currentGameDur >= Game_DurationMax) {
		room_goto(rm_resultRoom);	//just this for now;	
	}
	
}

if (room == rm_resultRoom) {
	
	if (!instance_exists(obj_result)) instance_create_layer(0,0,"guiLayer",obj_result);	
	
};
