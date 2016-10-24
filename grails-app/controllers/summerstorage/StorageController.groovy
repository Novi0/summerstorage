package summerstorage



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StorageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Storage.list(params), model:[storageInstanceCount: Storage.count()]
    }

    def show(Storage storageInstance) {
        respond storageInstance
    }

    def create() {
//		def s=new Storage()
//		respond s
//		s.save flush:true
//		userInstance.addToStorage(s);
//		userInstance.save flush:true
        respond new Storage(params)
    }
	
    @Transactional
    def save(Storage storageInstance) {
        if (storageInstance == null) {
            notFound()
            return
        }

        if (storageInstance.hasErrors()) {
            respond storageInstance.errors, view:'create'
            return
        }
		storageInstance.save flush:true
//		userInstance.addToStorage(storageInstance);
//		userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'storage.label', default: 'Storage'), storageInstance.id])
                redirect storageInstance
            }
            '*' { respond storageInstance, [status: CREATED] }
        }
    }

    def edit(Storage storageInstance) {
        respond storageInstance
    }

    @Transactional
    def update(Storage storageInstance) {
        if (storageInstance == null) {
            notFound()
            return
        }

        if (storageInstance.hasErrors()) {
            respond storageInstance.errors, view:'edit'
            return
        }

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
