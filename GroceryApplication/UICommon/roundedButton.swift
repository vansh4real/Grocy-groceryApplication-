//
//  roundedButton.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import SwiftUI

struct roundedButton: View {
    @State var title: String = "Title"
    var body: some View {
        Text(title)
            .frame(minWidth: 200, maxWidth: 200, minHeight: 45, maxHeight: 45)
            .padding()
            .foregroundStyle(.white)
            .bold()
            .font(.title2)
            .background(Color.grocyAzure)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .contentShape(Rectangle())
    }
}

#Preview {
    roundedButton()
}
