//CREATE

guiH_Quarterx = display_get_gui_width()/4;
buttonY = display_get_gui_height() - 64;
myAlpha0 = 1;
myAlpha1 = 1;
myAlpha2 = 1;
myAlpha3 = 1;


#region States
enum currentActiveBtn {
	scp = 0,
	staff = 1,
	orders = 2,
	funds = 3,
	none = 4
}

global.buttonState = currentActiveBtn.none;

#endregion




//STEP

var inputSelect = mouse_check_button_pressed(mb_left);

#region Coordinates

var btnTopY = 840;
var btnBottomY = 950;
var btn0left = 15;
var btn0right = 125;
var btn1left = 150;
var btn1right = 260;
var btn2left = 280;
var btn2right = 390;
var btn3left = 420;
var btn3right = 530;

#endregion


if (mouse_y > btnTopY) && (mouse_y < btnBottomY) {
	
	#region button 0
	if (mouse_x > btn0left) && (mouse_x < btn0right) {
		if (inputSelect) {
			if (buttonState != currentActiveBtn.scp) buttonState = currentActiveBtn.scp;
			else buttonState = currentActiveBtn.none;
		}
	}
	#endregion
	
	#region button 1
	//button 1
	if (mouse_x > btn1left) && (mouse_x < btn1right) {
		if (global.inputSelect) {
			if (buttonState != currentActiveBtn.staff) buttonState = currentActiveBtn.staff;
			else buttonState = currentActiveBtn.none;
		}	
	}	
	#endregion
	
	#region button 2	
	//button 2
	if (mouse_x > btn2left) && (mouse_x < btn2right) {
		if (global.inputSelect) {
			if (buttonState != currentActiveBtn.orders) buttonState = currentActiveBtn.orders;
			else buttonState = currentActiveBtn.none;
		}		
	}
	#endregion
	
	#region button 3
	//button 3
	if (mouse_x > btn3left) && (mouse_x < btn3right) {
		if (global.inputSelect) {
			if (buttonState != currentActiveBtn.funds) buttonState = currentActiveBtn.funds;
			else buttonState = currentActiveBtn.none;
		}			
	}	
	#endregion
	
}

#region Create a window object if there isnt one

if (!instance_exists(obj_BtnWindow)) instance_create_layer(0,0,"guiLayer",obj_BtnWindow);

#endregion




//DRAW GUI

#region Draw 4 buttons

//SCPs button
draw_sprite_ext(spr_igButton,0,guiH_Quarterx,buttonY,1,1,0,c_white,myAlpha0);

//Staff
draw_sprite_ext(spr_igButton,0,guiH_Quarterx*2,buttonY,1,1,0,c_white,myAlpha1);

//Orders
draw_sprite_ext(spr_igButton,0,guiH_Quarterx*3,buttonY,1,1,0,c_white,myAlpha2);

//Funds
draw_sprite_ext(spr_igButton,0,guiH_Quarterx*4,buttonY,1,1,0,c_white,myAlpha3);



#endregion
