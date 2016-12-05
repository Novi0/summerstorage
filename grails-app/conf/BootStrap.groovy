import javax.websocket.Session;

import summerstorage.Storage
import summerstorage.User

class BootStrap {

    def init = { servletContext ->
		
		
		User Noah = new User (name: 'Noah', userEmail: 'noah@wustl.edu', password: 'asdf', 
			phone: '1234567890', selfie: '1').save(flush:true);
		
		
		User Atticus = new User (name: 'Atticus', userEmail: 'asdf@wustl.edu', password: 'asdf',
			phone: '1234567890', selfie: '2').save(flush:true);
		
		User Novi = new User (name: 'Novi', userEmail: 'novi@wustl.edu', password: 'asdf',
			phone: '1234567890', selfie: '2').save(flush:true);
		
		User Cancan = new User (name: 'Cancan', userEmail: 'cancan@wustl.edu', password: 'asdf',
			phone: '1234567890', selfie: '2').save(flush:true);
		
		
		Date start1 =new Date().parse("yyyy-MM-dd","2015-04-15")
		Date start2 =new Date().parse("yyyy-MM-dd","2016-04-15")
		
		Date end1 =new Date().parse("yyyy-MM-dd","2017-04-17")
		Date end2 =new Date().parse("yyyy-MM-dd","2017-04-18")
		Storage[] noahStorages = [
			new Storage(photo: '1', location: '536 rosedale ave', startDate: start1, endDate: end1, 
				area: 1.2, height: 2.4, floorsUp: 3, locks: 2, price: 0.5, climate: false, 
				type: 'Basement', heavyAllowed: true, lat:38.654, lng:-90.296).save(flush:true),
			new Storage(photo: '2', location: '7000 forsyth blvd', startDate: start2, endDate: end2,
				area: 2.2, height: 2.42, floorsUp: 1, locks: 3, price: 0.5, climate: true,
				type: 'Closed Room', heavyAllowed: true, lat:38.647, lng:-90.316).save(flush:true),
			]
		
		noahStorages.each { stor ->
			Noah.addToStorage(stor)
			Noah.save(flush:true);
		}
		
		
		Date start3 =new Date().parse("yyyy-MM-dd","2016-06-12")
		Date start4 =new Date().parse("yyyy-MM-dd","2017-06-1")
		
		Date end3 =new Date().parse("yyyy-MM-dd","2017-05-30")
		Date end4 =new Date().parse("yyyy-MM-dd","2018-07-12")
		
		Storage[] noviStorages = [
			new Storage(photo: '3', location: '5000 Waterman Blvd', startDate: start3, endDate: end3,
				area: 1.2, height: 2.4, floorsUp: 3, locks: 2, price: 0.5, climate: false,
				type: 'Basement', heavyAllowed: true, lat: 38.649, lng: -90.278).save(flush:true),
			new Storage(photo: '4', location: '6665 Kinsbury Ave', startDate: start4, endDate: end4,
				area: 2.2, height: 2.42, floorsUp: 1, locks: 3, price: 0.5, climate: true,
				type: 'Closed Room', heavyAllowed: true, lat:38.653, lng:-90.3).save(flush:true),
			]
		noviStorages.each { stor ->
			Novi.addToStorage(stor)
			Novi.save(flush:true);
		}
		
	
    
    }
    
    def destroy = {
    }
}
