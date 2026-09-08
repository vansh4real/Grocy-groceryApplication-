//
//  homeScreenCard.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 08/09/26.
//

import SwiftUI

struct homeScreenCard: View {
    @State var title :String = "title"
    @State var subtitle1 :String = "Fresh Grocery"
    @State var subtitle2 :String = "for your health"
    @State var subtitle3 :String = "subtitle3"
    @State var image :String = "vegePaperBag"
    @State var backgrounColor :Color = Color.sprout
    var body: some View {
        HStack(alignment:.bottom) {
            VStack(alignment:.leading) {
                Text(title)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(Color.darkGreen)
                Text(subtitle1)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundStyle(Color.darkGreen)
                    
                Text(subtitle2)
                    .padding(.bottom)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundStyle(Color.darkGreen)
                Text(subtitle3)
                    .font(.subheadline)
                    .bold()
                    .foregroundStyle(Color.darkGreen)
                Button{
                    //
                }label:{
                    HStack{
                        Text("Shop Now")
                        Image(systemName: "arrow.right")
                    }
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .padding(.vertical,12)
                        .bold()
                        .background(Color.darkGreen)
                        .cornerRadius(40)
                        
                }
                
                
               
            }
           
            Image(image)
                .resizable()
                .scaledToFit()
//                .frame(width: 130,height: 130,alignment: .trailing)
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .trailing)
        }
        .frame(maxWidth: .infinity,maxHeight: 200, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(backgrounColor)
        )
        .padding(.horizontal)
    }
}

#Preview {
    homeScreenCard()
}
