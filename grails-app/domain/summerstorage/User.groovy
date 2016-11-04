package summerstorage

class User {
	long id;
	String userName;
	String password;
	String userEmail;
	String name;
	String phone;
	double rating;
	String selfie;
	static constraints = {
		userName unique:true;
		password unique:true;
		userEmail email:true, blank:false ;
		name blank:false;
		phone blank:false;
		rating blindable: true;
	}
	static hasMany=[storage:Storage]
	static mapping = {
		storage fetch: 'join'
	}
   
}
