package minspector

import company.Product

class ProductsController {

    def index() { }

    def create()
    {
        def name = params.name
        def list = params.tags
        def producto = new Product( name,tags: list)

        producto.save()

        render(view:"facebook/index", model: [company: company, loaded: true]);

    }
}
