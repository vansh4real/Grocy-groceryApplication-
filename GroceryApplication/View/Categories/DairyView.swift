//
//  DairyView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 09/09/26.
//

import SwiftUI

struct DairyView: View {
    var body: some View {
        ZStack {
            Color.tintedWhite
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Dairy Products")
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
                                            itemImage: "Milk",
                                            itemName: "Milk",
                                            itemQuantity: "1 Pc",
                                            itemPrize: 60)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Buttermilk",
                                            itemName: "Amul Masti",
                                            itemQuantity: "1 pc",
                                            itemPrize: 10)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Cheese",
                                            itemName: "Cheese",
                                            itemQuantity: "100 g",
                                            itemPrize: 100)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Yogurt",
                                            itemName: "Yogurt",
                                            itemQuantity: "100 g",
                                            itemPrize: 50)
                            
                        }
                        .padding()
                        
                        HStack {
                            groceryItemList(quantity: 0,
                                            itemImage: "Butter",
                                            itemName: "Butter",
                                            itemQuantity: "120 g",
                                            itemPrize: 120)
                            Spacer()
                            groceryItemList(quantity: 0,
                                            itemImage: "Curd",
                                            itemName: "Curd",
                                            itemQuantity: "250 g",
                                            itemPrize: 50)
                            
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
    DairyView()
}
