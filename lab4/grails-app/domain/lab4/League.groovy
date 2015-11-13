package lab4


class League {

    String name
    Set<Person> members
    static hasMany = [members: Person]

    static constraints = {
    }
}
