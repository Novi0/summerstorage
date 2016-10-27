package summerstorage

class User {
	long id;
	String name;
	String userEmail;
	String password;
	String phone;
	double rating;
	String selfie;
	
	/*
	byte[] image;
	String imageName;
	String imageType;
	*/
	
	static constraints = {
		name (blank:false);
		userEmail (email: true, blank: false, unique: true, matches: '.*\\@wustl.edu'); 
		password (password: true);
		phone (blank:false, size: 10..11);
		rating (blindable: true);
		
		/*
		image nullable: true, blank: true, maxSize: 1024 * 1024 * 20; //20MB
        imageName nullable: true, blank: true;
        imageContentType nullable: true, blank: true;
		*/  
		 
	}
	static hasMany=[storage:Storage]
}


