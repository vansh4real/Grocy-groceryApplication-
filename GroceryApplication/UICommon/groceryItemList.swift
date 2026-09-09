//
//  groceryItemList.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 09/09/26.
//

import SwiftUI

struct groceryItemList: View {
    @State  var quantity: Int = 0
    @State  var itemImage : String = "tomatoes"
    @State  var itemName : String = "Tomatos"
    @State  var itemQuantity : String = "1 Kg"
    @State  var itemPrize = 40
    var body: some View {
        VStack {
            VStack{
                Image(itemImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 100,height: 70)
                
                VStack(alignment: .leading) {
                    Text(itemName)
                        .bold()
                        .font(.headline)
                        .foregroundStyle(.black.opacity(1))
                    
                    Text(itemQuantity)
                        .foregroundStyle(.secondary)
                        .bold()
                    HStack{
                        Text("₹")
                        Text("\(itemPrize)")
                    }
                    .bold()
                }
                .padding(.bottom,10)
                .frame(maxWidth: .infinity,alignment: .leading)
                
            }
            .padding()
            .frame(maxWidth: 160)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(radius: 0.5))
            
            HStack{
                Button{
                    if quantity > 0{
                        quantity -= 1
                    }
                }label: {
                    Image(systemName: "minus")
                        .bold()
                        .font(.title3)
                        .foregroundStyle(.darkGreen)
                }
                
                Text("\(quantity)")
                    .bold()
                    .font(.title)
                    .foregroundStyle(.darkGreen)
                
                Button{
                    if quantity >= 0{
                        quantity += 1
                    }
                }label: {
                    Image(systemName: "plus")
                        .bold()
                        .font(.title3)
                        .foregroundStyle(.darkGreen)
                }
                
                
            }
            .padding(.horizontal)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.sprout)
            )
        }
            
            
            
        }
        
    
}

#Preview {
    groceryItemList()
}
