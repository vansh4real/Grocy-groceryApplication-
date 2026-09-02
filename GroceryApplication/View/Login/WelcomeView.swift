//
//  WelcomeView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.grocySky
                    .ignoresSafeArea()

                VStack {
                    Image("basketImage")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300)
                        .padding()
                    
                    Capsule()
                        .fill(Color.black.opacity(0.2))
                        .frame(width: 190, height: 10)
                        .blur(radius: 8)
                        .padding(.bottom)

                    Text("Welcome to \n GROCY")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.top)

                    Text("Your one way to the grocery store")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom)

                    NavigationLink {
                        SignInView()
                    } label: {
                        roundedButton(title: "Get Started")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
