
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
               // Fill in the gaps to navigate to screens below:
                }
                .padding()
                .frame(width: 250)
                .background(Color.white)
                .cornerRadius(10)
                
                Spacer()
            }
        }
}
