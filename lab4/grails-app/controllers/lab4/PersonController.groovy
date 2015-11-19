package lab4

class PersonController {

    def index() {
        def people= Person.list([sort:"lastName"])
        [people:people]

    }

    def newPersonForm(){

    }

    def createPerson(){
        def person = new Person(params)
        if (person.save()) {
            redirect(action:"index")
        } else {
            render(view:"newPersonForm",model:[person:person])
        }
    }

    def deletePerson(){
        def id = params.id
        [id:id]
        flash.id = id
    }

    def delete(){
        def id = flash.id //null
        [id:id]
        def p = Person.get(id)
        p.delete()
        redirect(action: "index")
    }

}
