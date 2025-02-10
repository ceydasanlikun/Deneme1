import SwiftUI

@main
struct ECommerceApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ProductsView()
                    .tabItem {
                        Label("Ürünler", systemImage: "cart")
                    }
                // Diğer sayfaları da buraya ekleyebilirsiniz (Sepet, Profil, Favoriler)
            }
        }
    }
} 