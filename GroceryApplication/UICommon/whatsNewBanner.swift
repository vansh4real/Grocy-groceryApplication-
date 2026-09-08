//
//  whatsNewBanner.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 08/09/26.
//

import SwiftUI

struct whatsNewBanner: View {
    var body: some View {
        Image("maggiBanner")
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal)
    }
}

#Preview {
    whatsNewBanner()
}
