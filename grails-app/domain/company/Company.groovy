package company

class Company {


    String name

    static hasMany = [products: Product]

    static constraints = {
    }
}
