package summerstorage

class Contract {

	String location;
	long idBuyer;
	long idSeller;
	Date startDate;
	Date endDate;
	double price;
	double squareFeet;
	double height;
	boolean furniture;
	boolean climateControlled;
	Date creationTime;
	boolean buyerAgree;
	boolean sellerAgree;
	
    static constraints = {
    	location: blindable: true;
		idBuyer: blindable: true;
		idSeller: blindable: true;
		startDate: blindable: true;
		endDate: blindable: true;
		price: blindable: true;
		squareFeet: blindable: true;
		height: blindable: true;
		furniture: blindable: true;
		climateControlled: blindable: true;
		creationTime: blindable: true;
		buyerAgree: blindable: true;
		sellerAgree: blindable: true;
		
		
	}
	
	static belongTo=[user:User]
}

