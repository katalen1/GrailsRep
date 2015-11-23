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
        def id = params       //java.lang.IllegalArgumentException when first line of delete ran -def p
        //def id = params.id           //same as below
        //def id = params.getIdentifier() //same as below
        //def id = params.long('id')  //no error but does not delete
        flash.id = id
    }

    def delete(){
        def p = Person.get(flash.id)
        p.delete()
        redirect(action: "index")
    }

}
