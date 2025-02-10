import SwiftUI

struct ProductsView: View {
    @StateObject private var viewModel = ProductsViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.products) { product in
                NavigationLink(destination: ProductDetailView(product: product)) {
                    HStack {
                        AsyncImage(url: URL(string: product.imageUrl)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50)
                        Text(product.name)
                        Spacer()
                        Text("\(product.price, specifier: "%.2f") TL")
                    }
                }
            }
            .navigationTitle("Ürünler")
        }
    }
} 