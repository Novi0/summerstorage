package summerstorage

import java.util.Date;

class Storage {
	static searchable = true;
	
	long id;
	String photo;
	String location;
	Date startDate;
	Date endDate;
	double area;
	int height;
	int floorsUp;
	int locks;
	double price;
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
		type blank: false, atrribute: ["Basement", "Storage Locker", "Closed Room", "Open Room" ];
		heavyAllowed blank: false, attribute: ["Yse","No"];
   }
	static belongTo=[user:User]
	
   
}
