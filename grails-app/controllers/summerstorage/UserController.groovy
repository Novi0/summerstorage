package summerstorage



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

	def auth(User userInstance) {
		if(!session.user) {
			redirect(uri: "")
			flash.message = "Please login"
			return false
			
		}
		else if(!(session.user.userEmail == userInstance.userEmail)) {
			flash.message = "You must be logged in as ${userInstance.name} to do that!"
			redirect(controller:"user", action:"index")
			return false
		}
		return true;
	}
	
	def show(User userInstance) {
        respond userInstance
    }
	
	def search() {
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
 
		def userList = User.createCriteria().list (params) {
			
			if ( params.name ) {
				ilike("name", params.name)
			}
		}
 
		[userInstanceList: userList, userInstanceCount: userList.totalCount]
	}
	
	/*
	def search(params){
		def name = params.name;
		double rating = 0;
		
		if (params.rating){
		rating = params.rating;
		}
		
		println(rating); 
		double maxRating = 5;
		
		def userList = User.createCriteria().list()
		{
		
			or {
				eq ('name', name);
				between('rating', rating, maxRating);
			}
			
		}
		//http://docs.grails.org/2.2.1/ref/Domain%20Classes/createCriteria.html
		//response userList;
		[userInstanceList: userList, userInstanceCount: userList.totalCount]
	}
	*/
	
    def create() {
        def u = new User(params)
		session.user=u
//		//save image
//		def f = request.getFile('avatar')
//		
//		  // List of OK mime-types
//		  if (!okcontents.contains(f.getContentType())) {
//			flash.message = "Avatar must be one of: ${okcontents}"
//			render(view:'select_avatar', model:[userInstance:u])
//			return
//		  }
//		
//		  // Save the image and mime type
//		  u.avatar = f.bytes
//		  u.avatarType = f.contentType
//		  log.info("File uploaded: $user.avatarType")
     }

    @Transactional
    def save(User userInstance) {
        //if (!auth(userInstance))
			//return 
		
		if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true
	session.user=userInstance
	flash.id=userInstance.id
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                //redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
		
		redirect (uri:'/')
    }

    def edit(User userInstance) {
		if (!auth(userInstance))
			return
		respond userInstance
    }

    @Transactional
    def update(User userInstance) {
		if (!auth(userInstance))
			return
			
		if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {
		if (!auth(userInstance))
			return
		
        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	def createStorage(){
		def u=User.findById(session.user.id)
		u.refresh();
		def s=chainModel?.storage
		println("the user id is"+u.id)
		
		s.save flush:true
		u.addToStorage(s)
		u.save flush:true
		redirect action:"show",id:u.id,model:[storageInstance:s]
	}
	def register(){
		redirect(action: 'create')
	}
	
	def login() {
		if(params.user != null && params.password != null){
			if(request.method =='POST'){
				def u= User.findByUserEmailAndPassword(params.user, params.password)
				if(u){
					session.user=u
					flash.id=u.id
					flash.message="Hello ${u.name}!";
					//redirect(view: "search")
					redirect(controller:'Storage', action:'search')
				}
				else{
					flash.message="Username/Password not found";
					render "User Name or Password is Wrong, Please Try Again"
				}
			}
		}
	}
	
	def logout = {
		session.user = null
		redirect(uri: "")
		flash.message="Please sign in"
	  }
	
	def doUpload(){
		
	}
	
	def contract(){
		render view:"contract"
	}
	
	def contact(){
		render view:"contact"
	}
	
	def about(){
		render view:"about"
	}
}