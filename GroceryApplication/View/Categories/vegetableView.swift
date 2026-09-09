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
            Color.tintedWhite
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Vegetables")
                    .bold()
                    .font(.title)
                    
                ScrollView(showsIndicators: false){
                    VStack {
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "tomatoes",
                                            itemName: "Tomatoes",
                                            itemQuantity: "1Kg",
                                            itemPrize: 40)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Potatoes",
                                            itemName: "Potatoes",
                                            itemQuantity: "1Kg",
                                            itemPrize: 30)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Ginger",
                                            itemName: "Garlic",
                                            itemQuantity: "100 g",
                                            itemPrize: 40)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Garlic",
                                            itemName: "Garlic",
                                            itemQuantity: "100 g",
                                            itemPrize: 38)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Cabbage",
                                            itemName: "Cabbage",
                                            itemQuantity: "400 g",
                                            itemPrize: 60)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "carrot",
                                            itemName: "Carrot",
                                            itemQuantity: "200 g",
                                            itemPrize: 24)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Onions",
                                            itemName: "Onion",
                                            itemQuantity: "1Kg",
                                            itemPrize: 56)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Capsicum",
                                            itemName: "Capsicum",
                                            itemQuantity: "250 g",
                                            itemPrize: 25)
                            
                        }
                        .padding()
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
