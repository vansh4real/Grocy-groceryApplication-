//
//  groceryItemList.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 09/09/26.
//

import SwiftUI

struct groceryItemList: View {
    @State  var quantity: Int = 0
    @State  var itemImage : String = "tomatos"
    @State  var itemName : String = "Tomatos"
    var body: some View {
        VStack{
                Image(itemImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 100,height: 70)
                    
                Text(itemName)
                    .bold()
                    .padding(.top,1)
                    .font(.title2)
                    .foregroundStyle(.black.opacity(0.6))
                    .padding(.bottom,1)
                HStack{
                    Button{
                        if quantity > 0{
                            quantity -= 1
                        }
                    }label: {
                        Image(systemName: "minus")
                            .bold()
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    
                    Text("\(quantity)")
                        .bold()
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    Button{
                        if quantity >= 0{
                            quantity += 1
                        }
                    }label: {
                        Image(systemName: "plus")
                            .bold()
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    
                    
                }
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            quantity > 0
                            ? Color.sprout
                            : Color.darkGreen
                            
                        )
                )
            }
            .padding()
            .frame(maxWidth: 170)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        quantity > 0
                        ? Color.voiletCustom
                        : Color.sprout
                        
                    )
                    
            )
            
            
            
        }
        
    
}

#Preview {
    groceryItemList()
}
