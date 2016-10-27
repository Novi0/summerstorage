package summerstorage



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import summerstorage.Storage;
import summerstorage.User;

@Transactional(readOnly = true)
class UserController {
	
	static scaffold = true

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

	def search() {
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
 
		def userList = User.createCriteria().list (params) {
			if ( params.name ) {
				ilike("name", params.name)
			}
			if ( params.rating ) {
				ilike("rating", Double.valueOf(params.rating))
			}
		}
 
		[userInstanceList: userList, userInstanceCount: userList.totalCount]
	}

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
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
	def createStorage(User userInstance){
		def s=new Storage()
		s.save flush:true
		userInstance.addToStorage(s);
		userInstance.save flush:true
		
		//render view:"index"
	}
	def register(){
		redirect(action: 'create')
	}
	
	def login() {
		if(params.user != null && params.password != null){
			if(request.method =='POST'){
				def u= User.findByUserNameAndPassword(params.user,params.password)
				if(u){
					session.user=u
					flash.message="login succeed";
					//redirect(view: "search")
					redirect(controller:'Storage', action:'index')
				}
				else{
					flash.message="User not found";
					render "User Name or Password is Wrong, Please Try Again"
				}
			}
		}
	}
	
	def doUpload(){
		
	}
}
