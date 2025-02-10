class ProductService {
    private var products: [Product] = []

    init() {
        // Excel'den verileri çekip burada liste olarak tutabilirsiniz
        products = [
            Product(id: 1, name: "Ürün 1", description: "Açıklama 1", price: 100, imageUrl: "url1"),
            Product(id: 2, name: "Ürün 2", description: "Açıklama 2", price: 200, imageUrl: "url2")
        ]
    }

    func getProducts() -> [Product] {
        return products
    }

    func getProductById(id: Int) -> Product? {
        return products.first { $0.id == id }
    }
} 