package summerstorage



import static org.springframework.http.HttpStatus.*
import grails.plugin.geocode.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StorageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	GeocoderService mapService = new GeocoderService();
	
	//def beforeInterceptor = [action:this.&auth, except:["index", "search", "show"]]

   
	def auth(Storage storageInstance) {
		if(!session.user) {
			redirect(uri: "")
			flash.message = "Please login"
			return false
		}
		
		
		else if( !(session.user.userEmail == storageInstance.user.userEmail) ){
			flash.message = "Sorry, you can only edit your own entries."
			return redirect(uri: "/storage/show/${storageInstance.id}")
		}
		return true
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Storage.list(params), model:[storageInstanceCount: Storage.count()]
    }

    def show(Storage storageInstance) {
        respond storageInstance
    }

	def calcDist(double lat1, double lon1){
		
		def criteria = Storage.createCriteria()
		def result = criteria.list{}
		result.each { storage ->
			def lat2 = storage.lat
			def lon2 = storage.lng
			
		
			final int R = 6371; // Radius of the earth
	
			Double latDistance = Math.toRadians(lat2 - lat1);
			Double lonDistance = Math.toRadians(lon2 - lon1);
			Double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
					+ Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))* Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
			Double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
			storage.distance = R * c * 0.621371; // convert to miles
			//println("DISTANCE")
			println(storage.distance)
			storage.save(flush:true)
		}
	}
	
	def search() {
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
 
		
		
		def location = params.location + "St. Louis, MO"
		def point = mapService.getLatLong(location)
		def latitude = point.lat
		def longitude = point.lng
		
		calcDist(latitude, longitude)
		

		def storageList = Storage.createCriteria().list (params) {
			
			if(params.distance){
				le("distance", Double.valueOf(params.distance))
			}						
			
			if (params.startDate){
				le("startDate", params.startDate)
			}
			if (params.endDate){
				ge("endDate", params.endDate)
			}
			if (params.floorsUp){
				ge("floorsUp", Integer.valueOf(params.floorsUp))
			}
			if ( params.locks ) {
				ge("locks", Integer.valueOf(params.locks))
			}
			if ( params.pricefrom){
				ge("price", Double.valueOf(params.pricefrom))
			}
			if (params.priceto){
				le("price", Double.valueOf(params.priceto))
			}
			if (params.climate){
				eq("climate", true)
			}
			if (params.type != "All"){
				eq("type", params.type)
			}
			if (params.heavyAllowed){
				eq("heavyAllowed", true)
			}			
		}
 
		[storageInstanceList: storageList, storageInstanceCount: storageList.totalCount]
				
	}
	
    def create(User userInstance) {
		respond new Storage(params)
		
    }
	
    @Transactional
    def save(Storage storageInstance) {
		//if (!auth(storageInstance))
		//return
		
		if (storageInstance == null) {
            notFound()
            return
        }

        if (storageInstance.hasErrors()) {
            respond storageInstance.errors, view:'create'
            return
        }
		def location = params.location + " St. Louis, MO"
		def point = mapService.getLatLong(location)
		storageInstance.lat = point.lat
		storageInstance.lng = point.lng
				
		storageInstance.save flush:true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'storage.label', default: 'Storage'), storageInstance.id])
                redirect storageInstance
            }
            '*' { respond storageInstance, [status: CREATED] }
        }
		chain(controller:"User",action:"createStorage",model:[storage:storageInstance])
    }

    def edit(Storage storageInstance) {
		if (!auth(storageInstance))
			return
		respond storageInstance
    }

    @Transactional
    def update(Storage storageInstance) {
		//if (!auth(storageInstance))
			//return
		
		if (storageInstance == null) {
            notFound()
            return
        }

        if (storageInstance.hasErrors()) {
            respond storageInstance.errors, view:'edit'
            return
        }

		def location = params.location + " St. Louis, MO"
		def point = mapService.getLatLong(location)
		storageInstance.lat = point.lat
		storageInstance.lng = point.lng
		
		storageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Storage.label', default: 'Storage'), storageInstance.id])
                redirect storageInstance
            }
            '*'{ respond storageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Storage storageInstance) {
		if(!auth(storageInstance))
			return
		
        if (storageInstance == null) {
            notFound()
            return
        }

        storageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Storage.label', default: 'Storage'), storageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'storage.label', default: 'Storage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
