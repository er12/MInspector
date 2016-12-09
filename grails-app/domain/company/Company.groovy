package minspector

class Company {

    String name

    static hasMany = [products: Product]

    static constraints = {
    }
}
