package summerstorage

import java.util.Date;

class Storage {
	long id;
	String photo;
	String location;
	Date startDate;
	Date endDate;
	int area;
	int height;
	int floorsUp;
	int locks;
	int price;
	Boolean climate;
	String type;
	Boolean heavyAllowed;
	
	
	static constraints = {
		photo blank: false;
		location blank: false;
		startDate blank: false;
		endDateblank: false;
		area blank: false;
		height blank: false;
		floorsUp blank: false;
		locks blank: false;
		price blank: false;
		climate blank: false, attribute:["Yes","No"];
		type blank: false, atrribute: ["Basement", "Storage Locker", "Close Room", "Open Room" ];
		heavyAllowed blank: false, attribute: ["Yse","No"];
   }
	static belongTo=[user:User]
	
   
}
