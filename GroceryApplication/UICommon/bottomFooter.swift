//
//  bottomFooter.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 09/09/26.
//

import SwiftUI

struct bottomFooter: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Made with")
                .font(.system(size: 50, weight: .bold, design: .rounded))
            HStack{
                Text("Love")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                Text("♥️")
                    .font(.system(size: 75, weight: .bold, design: .rounded))
            }
            Text("#GROCY")
                .font(.system(size: 30, weight: .bold, design: .rounded))
        }
        .foregroundStyle(.gray.opacity(0.4))
        .frame(maxWidth: .infinity,alignment: .leading)
        .padding()
    }
}

#Preview {
    bottomFooter()
}
