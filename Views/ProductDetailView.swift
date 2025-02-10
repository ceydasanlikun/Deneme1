import SwiftUI

struct ProductDetailView: View {
    let product: Product

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.imageUrl)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            Text(product.name)
                .font(.title)
            Text(product.description)
                .font(.body)
            Text("\(product.price, specifier: "%.2f") TL")
                .font(.headline)
            Button(action: {
                // Sepete ekleme işlemi
            }) {
                Text("Sepete Ekle")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Ürün Detayı")
    }
} 