
import SwiftUI

struct MenuView: View {
    
    @Binding var isMenuOpen: Bool
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation {
                        isMenuOpen = false
                    }
                }
            
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 20) {
                    NavigationLink(destination: HomeView()) {
                        Text("Home")
                            .modifier(ButtonStyleModifier())
                    }
                    NavigationLink(destination: BasketView()) {
                        Text("Basket")
                            .modifier(ButtonStyleModifier())
                    }
                    NavigationLink(destination: AboutUsView()) {
                        Text("About Us")
                            .modifier(ButtonStyleModifier())
                    }
                    NavigationLink(destination: AccountView()) {
                        Text("Account")
                            .modifier(ButtonStyleModifier())
                    }
                    NavigationLink(destination: LogoutView()) {
                        Text("Logout")
                            .modifier(ButtonStyleModifier())
                    }
                    Spacer()
                }
                .padding()
                .frame(width: 250)
                .background(Color.white) 
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}
