package lab4

class Person {
    String firstName
    String lastName
    String gender
    String middleInitial
    Integer age
    String maxDeadlift
    String gradDate
    String superPower
    League league


    static constraints = {

        firstName blank: false
        lastName blank: false
        middleInitial size: 0..1, blank: true
        age min: 10, max: 100
        maxDeadlift blank: false
        gradDate blank: false
        superPower blank: false
        league nullable: true
    }


}
