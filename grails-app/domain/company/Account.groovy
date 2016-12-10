package minspector

class Account {

    String username
    String password

    Company company

    static hasMany = [posts: Post]

    static constraints = {
    }
}
