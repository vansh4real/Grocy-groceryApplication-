//
//  fruitView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 09/09/26.
//

import SwiftUI

struct fruitView: View {
    var body: some View {
        ZStack {
            Color.tintedWhite
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Fruits")
                    .bold()
                    .font(.title)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blueStudio))
                ScrollView(showsIndicators: false){
                    VStack {
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Banana",
                                            itemName: "Banana",
                                            itemQuantity: "12 Pc",
                                            itemPrize: 40)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Grapes",
                                            itemName: "Grapes",
                                            itemQuantity: "250 g",
                                            itemPrize: 30)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Watermelon",
                                            itemName: "Garlic",
                                            itemQuantity: "1.8 Kg",
                                            itemPrize: 100)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Mangoes",
                                            itemName: "Mangoes",
                                            itemQuantity: "500 g",
                                            itemPrize: 80)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Papaya",
                                            itemName: "Cabbage",
                                            itemQuantity: "1 Kg",
                                            itemPrize: 60)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Guava",
                                            itemName: "Guava",
                                            itemQuantity: "500 g",
                                            itemPrize: 58)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Oranges",
                                            itemName: "Oranges",
                                            itemQuantity: "500 g",
                                            itemPrize: 70)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Pineapple",
                                            itemName: "Pineapple",
                                            itemQuantity: "1 Kg",
                                            itemPrize: 75)
                            
                        }
                        .padding()
                    }
                    Divider()
                    bottomFooter()
                }
                
                
            }
            .padding()
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        }
        FooterView()
        
    }
}

#Preview {
    fruitView()
}
