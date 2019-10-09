//CREATE

myAlpha = 0;
thirdFade = false;
fadeSpeed = 0.005;
alarm[0] = 240;

centerX = global.gameWidth/2;
startBtnY = id.y-120;
aboutBtnY = id.y;
exitBtnY = id.y+120;

clickedStart = false;
clickedAbout = false;





//Alarm 0

/// @description Start fade 
thirdFade = true;





//STEP

var inputSelect = mouse_check_button_pressed(mb_left);

//Fade the buttons in
if (thirdFade) {
	myAlpha = approach(myAlpha,1, fadeSpeed);	
}


//Start btn functionality
if (mouse_y > id.y-150) && (mouse_y < id.y-90) {
	if (inputSelect) {		//This will have to change for the touch screen mobile
		clickedStart = true;
	}


}

//About btn functionality
if (mouse_y > id.y-30) && (mouse_y < id.y+30) {
	if (inputSelect) {		//This will have to change for the touch screen mobile
		clickedAbout = true;
	}


}

//Exit btn functionality
if (mouse_y > id.y+90) && (mouse_y < id.y+150) {
	if (inputSelect) {		//This will have to change for the touch screen mobile
		game_end();
	}
}


if (clickedStart || clickedAbout) {
	//button animation
	if (clickedStart) {
		room_goto(rm_gameRoom);
	} else if (clickedAbout) {
		room_goto(rm_aboutRoom);
	}
	
}



//DRAW

//Draw the buttons
draw_sprite_ext(spr_mainButtonStart, 0, centerX, startBtnY, 1, 1, 0, c_white, myAlpha);
draw_sprite_ext(spr_mainButtonAbout, 0, centerX, aboutBtnY, 1, 1, 0, c_white, myAlpha);
draw_sprite_ext(spr_mainButtonExit, 0, centerX, exitBtnY, 1, 1, 0, c_white, myAlpha);
