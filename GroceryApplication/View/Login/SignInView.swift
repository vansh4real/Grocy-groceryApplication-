//
//  SignInView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        
        ZStack{
            Color.grocySky
                .ignoresSafeArea()
         
            VStack{
                Image("basketImage")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 170)
                    .padding(.top)
                
                Capsule()
                        .fill(Color.blue.opacity(0.14))
                        .frame(width: 190, height: 10)
                        .blur(radius: 8)
            
                Text("Welcome Back!")
                    .font(.title)
                    .bold()
                
                Text("Sign in to continue GROCY")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    
                
                
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    SignInView()
}
