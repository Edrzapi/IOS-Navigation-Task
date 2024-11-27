import SwiftUI

struct HomeView: View {
    @State private var isMenuOpen = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                    Text("Welcome to the app!")
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                }
                .background(Color.white)
                .navigationBarItems(leading: Button(action: {
                    withAnimation {		
                        isMenuOpen.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(.black)
                        .font(.title)
                })
                
                if isMenuOpen {
                    MenuView(isMenuOpen: $isMenuOpen)
                        .transition(.move(edge: .leading))
                }
            }
        }
    }
}


struct BasketView: View {
    var body: some View {
        Text("Basket Page")
            .font(.largeTitle)
            .padding()
    }
}

struct AboutUsView: View {
    var body: some View {
        Text("About Us Page")
            .font(.largeTitle)
            .padding()
    }
}

struct AccountView: View {
    var body: some View {
        Text("Account Page")
            .font(.largeTitle)
            .padding()
    }
}

struct LogoutView: View {
    var body: some View {
        Text("Logout Page")
            .font(.largeTitle)
            .padding()
    }
}

// Custom modifier for menu buttons
struct ButtonStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundColor(.black)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}




#Preview {
    HomeView()
}
