//
//  categoriesSection.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 08/09/26.
//

import SwiftUI

struct categoriesSection: View {
    @State var image: String = "categoriesVeges"
    @State var name :String = "Vegetables"
    @State var bgColor: Color = .gray
    @State var textColor:Color = .black
    var body: some View {
        
            ZStack{
                
                    RoundedRectangle(cornerRadius: 15)
                        .fill(bgColor)
                VStack{
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70,height: 70)
                        .padding(.horizontal)
                    
                    Text(name)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(textColor)
                    
                    Image(systemName: "chevron.right")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(textColor)
                        .padding(.bottom)
                }
                
            }
            .frame(width: 100 ,height: 100)
            
           
        
    }
}

#Preview {
    categoriesSection()
}
