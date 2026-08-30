//
//  WelcomeView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Color.grocySky
                .ignoresSafeArea()
            
            VStack{
                Image("basketImage")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 300)
                    .padding()
                
                Text("Welcome to \n GROCY")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Text("Your one way to the grocery store")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                
                NavigationLink {
                    SignInView()
                } label: {
                    roundedButton(title: "Get Started")
                        .frame(maxWidth: .infinity)
                        .contentShape(Rectangle())
                }
                
                
            }
        }
    }
}

#Preview {
    NavigationView {
        WelcomeView()
    }
   
}

