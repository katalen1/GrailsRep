package lab4

class LeagueController {

    def index() {
        def leagues = League.list()
        [leagues:leagues]
    }

    def create(){

    }

    def createLeague(){
        def league = new League([name:params.name])
        params.members.each {
            league.addToMembers(Person.get(it as Long))
        }
        if (league.save()) {
            redirect(action:"index")
        } else {
            render(view:"create",model:[leagues: league])
        }
    }

    def view(){
        def id = params.long('id')
        def league = League.get(id)
        league.delete(flush: true)
        //def lmembers = league.members.list()
        //[lmembers:lmembers]
    }
}
