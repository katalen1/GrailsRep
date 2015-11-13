package lab4

class LeagueController {

    def index() {
        def leagues = League.list()
        [leagues:leagues]
    }

    def create(){

    }

    def createLeague(){
        def league = new League(params)
        if (league.save()) {
            redirect(action:"index")
        } else {
            render(view:"create",model:[leagues: league])
        }
    }

    def view(){
        //get league based of id of selected league
        //assign league name and members
    }
}
