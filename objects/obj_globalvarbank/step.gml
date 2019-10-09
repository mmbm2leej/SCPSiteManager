//if the game is running
if (room == rm_gameRoom) {
	if (global.currentGameDur < Game_DurationMax)	{
		global.currentGameDur+=10000;
	
	
	#region Continuously Run the income
		if (global.currentGameDur % global.pizzaInterval == 0) global.cash += global.pizzaIncome;
		if (global.currentGameDur % global.toyInterval == 0) global.cash += global.toyIncome;
		if (global.currentGameDur % global.constructionInterval == 0) global.cash += global.constructionIncome;
		if (global.currentGameDur % global.clinicInterval == 0) global.cash += global.clinicIncome;
		if (global.currentGameDur % global.hollywoodInterval == 0) global.cash += global.hollywoodIncome;
	#endregion
	
	
	}
}
