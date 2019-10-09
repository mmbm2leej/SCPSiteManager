//CREATE

alpha = 0;
secondAlpha = 0;
startFade = false;
startFadeTitle = false;
playedMainSound = false;
fadeSpeed = 0.004;
alarm[0] = 120;


//STEP

if (startFade) {
	alpha = approach(alpha, 1, fadeSpeed);
	if (!playedMainSound) && (!audio_is_playing(snd_main)) {
		audio_play_sound(snd_main,0,false);
		playedMainSound = true;
	}
	if (startFadeTitle) {
		secondAlpha = approach(secondAlpha, 1, fadeSpeed);
	}
}


//Alarm 0

/// @description Fade in the Logo 
startFade = true;
alarm[1] = 60;



//DRAW

draw_sprite_ext(spr_logo,0,270,190,1,1,0,c_white,alpha);
draw_sprite_ext(spr_mainTitle,0,270,360,1,1,0,c_white,secondAlpha);


//Alarm 1

/// @description Fade in the Title

startFadeTitle = true;
