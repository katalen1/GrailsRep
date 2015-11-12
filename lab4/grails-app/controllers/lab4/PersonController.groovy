package lab4

class PersonController {

    def index() {
        def people= Person.list([sort:"lastName"])
        [people:people]
    }

    def newPersonForm(){

    }

    def createPerson(){
        def p = new Person(params)
        p.save()
        redirect(action: "index")
    }

    def deletePerson(){

    }

    def delete(){
        def p = Person.get(params)
        p.delete()
        redirect(action: "index")
    }

}
