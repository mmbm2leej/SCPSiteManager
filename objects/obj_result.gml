//CREATE

counterscpcontained = 0;
recordedscpcontained = global.containedscpcount;
starCount = 0;
begincount = false;
alarm[0] = 240;

dClassMin = 5;
cClassMin = 20;
bClassMin = 50;
O5Min = 100;
administratorMin = 150;

grade = "";
scpcountcomplete = false;
pointsAwardedcurrent = 0;
pointsAwardedtarget = 0;




//STEP

#region contained counter
if (begincount) {	//THIS IS TOO FAST!
	if (counterscpcontained != recordedscpcontained) {
		if (!audio_is_playing(snd_counter)) audio_play_sound(snd_counter,0,false);
		counterscpcontained+= ceil((recordedscpcontained-counterscpcontained)/40);
	} else {
		scpcountcomplete = true;	
	}
}

#region Grading
if (	(counterscpcontained >= dClassMin) && (counterscpcontained < cClassMin)		) {
	pointsAwardedtarget = 3;
	grade = "D-Class";
} else
if (	(counterscpcontained >= cClassMin) && (counterscpcontained < bClassMin)		) {
	pointsAwardedtarget = 5;
	grade = "C-Class";
} else
if (	(counterscpcontained >= bClassMin) && (counterscpcontained < O5Min)		) {
	pointsAwardedtarget = 8;
	grade = "B-Class";
} else
if (	(counterscpcontained >= O5Min) && (counterscpcontained < administratorMin)		) {
	pointsAwardedtarget = 10;
	grade = "O-5 Councilmember";
} else
if (counterscpcontained >= administratorMin) {
	pointsAwardedtarget = 18;
	grade = "Administrator";
} else grade = "";

#endregion

#region Point Awarded

if (scpcountcomplete) {
	if (pointsAwardedcurrent != pointsAwardedtarget) {
		pointsAwardedcurrent+= ceil((pointsAwardedtarget-pointsAwardedcurrent)/40);
	}
	
}

#endregion

#endregion





//DRAW GUI

var textLeft = 32;
var textTop = 32;
var halfpoint = display_get_gui_width()/2;

draw_set_color(c_white);
draw_set_halign(fa_center);


draw_text(halfpoint, textTop, "The Yearly Report is in...");
draw_text(halfpoint, textTop*2, "Let's see how well you performed.");
draw_text(halfpoint, textTop*3, "SCPs Contained:");
draw_text(halfpoint, textTop*4, counterscpcontained);
draw_text(halfpoint, textTop*5, grade);

draw_text(halfpoint, textTop*6, "For your outstanding work: ");
draw_text(halfpoint, textTop*7, pointsAwardedcurrent);



//Alarm 0

/// @description Being the contain counter

begincount = true;
