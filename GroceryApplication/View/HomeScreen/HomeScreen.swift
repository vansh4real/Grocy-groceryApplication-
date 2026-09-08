//
//  HomeScreen.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 07/09/26.
//

import SwiftUI

struct HomeScreen: View {
    @State private var searchGroceries:String = ""
    @State private var scrollPosition: Int? = 0
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.grocyAzure.opacity(0.6),
                                    Color.grocyMist],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
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
                
                TabView {
                    homeScreenCard(title: "Fresh Picks",
                                   subtitle1: "Fresh Grocery",
                                   subtitle2: "For you",
                                   subtitle3: "Only quality products",
                                   image: "fruitBasket",
                                   backgrounColor: Color.sprout)
                    
                    homeScreenCard(title: "Fresh Picks",
                                   subtitle1: "Upto 50% off",
                                   subtitle2: "On first order",
                                   subtitle3: "Get it now",
                                   image: "vegePaperBag",
                                   backgrounColor: Color.peach)
                    
                    homeScreenCard(title: "Fresh Picks",
                                   subtitle1: "Buy more",
                                   subtitle2: "Save more",
                                   subtitle3: "Deals for you",
                                   image: "groceries",
                                   backgrounColor: Color.blueStudio)
                }
                .tabViewStyle(.page)
                .frame(height: 250)
                
                
                //Categories section/////////////////
                
                
                Text("Categories")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30){
                            
                            Button{
                                
                            }label:{
                                categoriesSection(image: "categoriesVeges",
                                                  name: "Vegetables",
                                                  bgColor: Color.sprout,
                                                  textColor: Color.darkGreen)
                                .id(0)
                            }
                            
                            Button{
                                
                            }label:{
                                categoriesSection(image: "categoriesFruits",
                                                  name: "Fruits",
                                                  bgColor: Color.bananaClr,
                                                  textColor: Color.brown)
                                .id(1)
                            }
                            
                            Button{
                                
                            }label:{
                                categoriesSection(image: "categoriesDairy",
                                                  name: "Dairy",
                                                  bgColor: Color.grocyBlue,
                                                  textColor: Color.white)
                                .id(2)
                                
                            }
                            
                            Button{
                                
                            }label:{
                                categoriesSection(image: "categoriesBeverage",
                                                  name: "Beverages",
                                                  bgColor: Color.categoriesOrg,
                                                  textColor: Color.black)
                                .id(3)
                            }
                        }
                        .padding()
                        .scrollTargetLayout()
                        
                    }
                    .scrollPosition(id:$scrollPosition)
                    .scrollTargetBehavior(.viewAligned)
                    .frame(height: 120)
                    
                    //indicator---
                    
                    HStack{
                        ForEach(0..<2, id: \.self){ index in
                            Capsule()
                                .fill(
                                    scrollPosition == index
                                    ?Color.black
                                    :Color.gray
                                )
                                .frame(
                                    width: scrollPosition == index ? 7 : 10,
                                    height: 6
                                )
                                .animation(.easeInOut, value: scrollPosition)
                                .padding(.top)
                            
                        }
                    }
                }
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    HomeScreen()
}
