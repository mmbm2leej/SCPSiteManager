#macro Game_DurationMax 216000	//1year in game(1 hour real time)

#region Time
global.currentGameDur = 0; //each game will start with 0;
global.monthCounter = 1;	//each month is 18000 steps(5 mins real time)
global.dayCounter = 1; //each day is 600 steps(10 seconds real time)
global.monthLimit = 12;
global.dayLimit = 30;

#endregion

#region In game Stats
global.cash = 10000;
global.intel = 0;
global.containedSCPs = [];
global.containedscpcount = 150;

#region Staff
global.staff =	 [	0,	0,	0,	0];	//D-class, Researchers, Security, MTF


/*
IG = intel gained
BR = breach risk = range from 0 to 1
BSev = breach severity = range from 0 to 1
Q = number of personnel


D-Class = contributes to minimize breach risk 	, and gaining intel	


Researchers = gain intel


Security = minimize breach risk		, and breach severity


MTF = discovers and retrieves SCPs
discovery intervals shorten with more MTF staff
each discovery offers 3-5 SCPs that player chooses to be retrieved.

*/


#endregion

#region Income Sources

global.fronts =	 [	0,	0,	0,	0,	0];		

//THIS NEEDS TO BE RECALCULATED
/*		name					index			price			income 		per time		inc over month		monthInc:Price
Spicy Crust Pizzeria,			0				7500			40			halfday			2400				32%
St. Nick’s Workshop,			1				12000			100			day				3000				25%
Security Construction Programs,	2				30000			1800		week			7710				25.7%
Sunrise Care Practitioners,		3				85000			4500		week			19285				22%	
Studio City Productions			4				200000			35000		month			35000				17%
*/

#region Prices
global.pizzaPrice = 7500;
global.toyPrice = 12000;
global.constructionPrice = 30000;
global.clinicPrice = 85000;
global.hollywoodPrice = 200000;

#endregion

#region Income and Rates
global.pizzaIncome = 36;
global.toyIncome = 100;
global.constructionIncome = 1800;
global.clinicIncome = 4500;
global.hollywoodIncome = 35000;

global.pizzaInterval = 60;
global.toyInterval = 180;
global.constructionInterval = 480;
global.clinicInterval = 600;
global.hollywoodInterval = 1800;



#endregion


#endregion


#endregion

#region SCP Master List
global.scpMasterlist = ds_grid_create(5,3);
//risk and severity scale from 0-10 for now
//income per step
//0= number,	1=name,			2=risk,			3= severity,		4= income

#region SCP 000 and  SCP 001  - leave blank
	ds_grid_add(global.scplist,0,0,0);
	ds_grid_add(global.scplist,1,0,0);
	ds_grid_add(global.scplist,2,0,0);
	ds_grid_add(global.scplist,3,0,0);
	ds_grid_add(global.scplist,4,0,0);
	ds_grid_add(global.scplist,0,1,0);
	ds_grid_add(global.scplist,1,1,0);
	ds_grid_add(global.scplist,2,1,0);
	ds_grid_add(global.scplist,3,1,0);
	ds_grid_add(global.scplist,4,1,0);
#endregion

#region SCP 002
	ds_grid_add(global.scplist,0,2,"002");
	ds_grid_add(global.scplist,1,2,"The Living Room");
	ds_grid_add(global.scplist,2,2,1);
	ds_grid_add(global.scplist,3,2,2);
	ds_grid_add(global.scplist,4,2,0.4);
#endregion

#region SCP 003
	ds_grid_add(global.scplist,0,3,"003");
	ds_grid_add(global.scplist,1,3,"Biological Motherboard");
	ds_grid_add(global.scplist,2,3,3);
	ds_grid_add(global.scplist,3,3,3);
	ds_grid_add(global.scplist,4,3,0.8);
#endregion

#region SCP 004
	ds_grid_add(global.scplist,0,4,"004");
	ds_grid_add(global.scplist,1,4,"The 12 Rusty Keys and the Door");
	ds_grid_add(global.scplist,2,4,1);
	ds_grid_add(global.scplist,3,4,2);
	ds_grid_add(global.scplist,4,4,0.3);
#endregion



#endregion



#region Perk Master List
#region Master Recruiter Perk
/*
Master Recruiter = periodically gain random Staff
Grade		 1								2										3
Effect		2 random staff					3 random staff							5 random staff
Per			18000 steps(5mins/1month)		14400 steps(4 mins/24 days)				10800 steps(3 mins/18 days)

*/
#endregion


#endregion





