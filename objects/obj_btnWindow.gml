//CREATE

myType = noone;



//STEP

myType = global.buttonState;

switch myType {
	case currentActiveBtn.scp: openSCPWindow(); break;
	case currentActiveBtn.staff: openStaffWindow(); break;
	case currentActiveBtn.orders: openOrdersWindow(); break;
	case currentActiveBtn.funds: openFundsWindow(); break;
	case currentActiveBtn.none: clearWindow();
}
