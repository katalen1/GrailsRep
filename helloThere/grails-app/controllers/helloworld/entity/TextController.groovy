package helloworld.entity



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TextController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Text.list(params), model:[textInstanceCount: Text.count()]
    }

    def show(Text textInstance) {
        respond textInstance
    }

    def create() {
        respond new Text(params)
    }

    @Transactional
    def save(Text textInstance) {
        if (textInstance == null) {
            notFound()
            return
        }

        if (textInstance.hasErrors()) {
            respond textInstance.errors, view:'create'
            return
        }

        textInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'text.label', default: 'Text'), textInstance.id])
                redirect textInstance
            }
            '*' { respond textInstance, [status: CREATED] }
        }
    }

    def edit(Text textInstance) {
        respond textInstance
    }

    @Transactional
    def update(Text textInstance) {
        if (textInstance == null) {
            notFound()
            return
        }

        if (textInstance.hasErrors()) {
            respond textInstance.errors, view:'edit'
            return
        }

        textInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Text.label', default: 'Text'), textInstance.id])
                redirect textInstance
            }
            '*'{ respond textInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Text textInstance) {

        if (textInstance == null) {
            notFound()
            return
        }

        textInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Text.label', default: 'Text'), textInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'text.label', default: 'Text'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
