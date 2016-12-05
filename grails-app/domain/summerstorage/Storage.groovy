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
	double height;
	int floorsUp;
	int locks;
	double price;
	Boolean climate;
	String type;
	Boolean heavyAllowed;
	
	double lat;
	double lng;
	double distance;
	
	
	static constraints = {
		photo blank: false;
		location blank: false;
		startDate blank: false;
		endDateblank: false;
		area blank: false, number: true, min: 0d;
		height blank: false, min: 0d;
		floorsUp blank: false;
		locks blank: false;
		price blank: false, min: 0d;
		climate blank: false, attribute:["Yes","No"];
		type blank: false, atrribute: ["Basement", "Storage Locker", "Closed Room", "Open Room" ];
		heavyAllowed blank: false, attribute: ["Yes","No"];
		
		user nullable: true;
		lat nullable: true;
		lng nullable: true;
		distance nullable: true;
		
   }
	static belongsTo=[user:User]
	
   
}
