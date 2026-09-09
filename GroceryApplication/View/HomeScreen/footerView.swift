import SwiftUI

struct FooterView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        HStack {
            
            footerItem(
                icon: "house",
                iconOnChange: "house.fill",
                title: "Home",
                index: 0
            )
            
            
            footerItem(
                icon: "cart",
                iconOnChange: "cart.fill",
                title: "Cart",
                index: 2
            )
            
            footerItem(
                icon: "shippingbox",
                iconOnChange: "shippingbox.fill",
                title: "Orders",
                index: 3
            )
            
            footerItem(
                icon: "person",
                iconOnChange: "person.fill",
                title: "Profile",
                index: 4
            )
        }
        .padding(.vertical, 5)
        

    }
    
    private func footerItem(
        icon: String,
        iconOnChange: String,
        title: String,
        index: Int
        ) -> some View {
        
        Button {
            selectedTab = index
        } label: {
            VStack(spacing: 4) {
                
                Image(systemName: selectedTab == index
                      ? iconOnChange
                      : icon
                )
                    .font(.system(size: 21))
                
                Text(title)
                    .font(.system(size: 11))
            }
            .foregroundColor(
                selectedTab == index
                ? Color.black
                : Color.gray
            )

            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    FooterView()
}
