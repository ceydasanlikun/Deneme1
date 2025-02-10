import SwiftUI

class ProductsViewModel: ObservableObject {
    @Published var products: [Product] = []

    private let productService: ProductService

    init() {
        self.productService = ProductService()
        loadProducts()
    }

    private func loadProducts() {
        products = productService.getProducts()
    }
} 