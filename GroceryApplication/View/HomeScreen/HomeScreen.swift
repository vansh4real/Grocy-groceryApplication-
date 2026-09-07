//
//  HomeScreen.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 07/09/26.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchGroceries:String = ""
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "location.fill")
                VStack(alignment: .leading){
                    Text("Delivered to")
                        .foregroundStyle(.secondary)
                        .font(.callout)
                    Text("Sector 8, Noida")
                        .bold(true)
                    }
                Spacer()
                Image(systemName: "bell.fill")
                    .font(.title2)
            }
            .padding(.horizontal)
            
            HStack {
                TextField("",
                          text: $searchGroceries,
                          prompt: Text("Search for groceries")
                    .foregroundColor(.black.opacity(0.6))
                )
                    .padding()
                    
                    
                Button{
                    //
                }
                label:{
                    Image(systemName: "magnifyingglass")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.black)
                }
                .padding()
            }
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            
            VStack(alignment:.leading) {
                Text("Fresh picks")
                Text("Fresh Grocery \n For healty you")
                    .multilineTextAlignment(.leading)
                Text("Quality products")
                Button{
                    //
                }label:{
                    Text("Shop Now")
                       
                }
                .padding()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
                )
            }
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.grocyMist)
            )
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    HomeScreen()
}
