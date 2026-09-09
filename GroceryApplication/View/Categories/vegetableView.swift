//
//  vegetableView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 09/09/26.
//

import SwiftUI

struct vegetableView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.grocyAzure.opacity(0.6),
                                    Color.grocyMist],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Vegetables & Fruits")
                    .bold()
                    .font(.title)
                ScrollView(showsIndicators: false){
                    HStack{
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                        Spacer()
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                    }
                    HStack{
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                        Spacer()
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                    }
                    HStack{
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                        Spacer()
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                    }
                    HStack{
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                        Spacer()
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                    }
                    HStack{
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                        Spacer()
                        groceryItemList(quantity: 0,
                                        itemImage: "tomatos",
                                        itemName: "tomatos")
                    }
                }
                
                
            }
            .padding()
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        }
        FooterView()
        
    }
        
}

#Preview {
    vegetableView()
}
