package grailsrep

class PeopleController {

    def index() {
        if(params.name){
            [name: params.name]
        }
    }

    def info(){
        if(params.age && params.gender && params.major && params.year && params.name){
            [age: params.age, gender: params.gender, major: params.major, year: params.year, name: params.name]
        }
    }

    def input(){

    }

}
