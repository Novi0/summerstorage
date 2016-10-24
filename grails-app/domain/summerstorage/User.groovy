package summerstorage

class User {
	long id;
	String userName;
	String name;
	String userEmail;
	String password;
	String phone;
	double rating;
	String selfie;
	static constraints = {
		name (blank:false);
		userEmail (email: true, blank: false, unique: true, matches: '.*\\@wustl.edu'); 
		password (password: true);
		phone (blank:false, size: 10..11);
		rating (blindable: true);
	}
	static hasMany=[storage:Storage]
}
