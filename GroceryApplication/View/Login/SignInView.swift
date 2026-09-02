//
//  SignInView.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    @State private var phoneNumber: String = ""
    @State private var isShowPicker: Bool = false
    @State private var selectedDialCode: String = "+91"
    @State private var countryFlag: String = "🇮🇳"
    @State private var searchCountries: String = ""
    @State private var countrySheet: Bool = false
    
    
    var body: some View {
        
        
        ZStack{
            Color.grocySky
                .ignoresSafeArea()
            
            VStack{
                Image("basketImage")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 350)
                    .padding(.top)
                
                Capsule()
                    .fill(Color.black.opacity(0.2))
                    .frame(width: 190, height: 10)
                    .blur(radius: 8)
                
                Text("Hey, Welcome!")
                    .font(.title)
                    .bold()
                
                Text("Sign in to continue GROCY")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack{
                    Button{
                        self.countrySheet = true
                    }label: {
                        
                        HStack {
                            Text("\(countryFlag) \(selectedDialCode)")
                                .bold()
                                .foregroundColor(.primary)
                        }
                    }
                    
                    TextField("Enter Mobile", text: $phoneNumber)
                    
                }
                .padding()
                
                Divider()
                    .padding(.bottom,25)
                
                Text("Or connect with social media")
                    .foregroundColor(.secondary)
                    .font(.callout)
                
                HStack{
                    Button{
                        
                    }label: {
                        Image("googleLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 50,maxHeight: 50)
                    }
                    
                    .padding()
                    
                    Button{
                        
                    }label: {
                        Image("facebookLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 50,maxHeight: 50)
                    }
                    
                }
                
                Button{
                    
                }
                label:{
                    roundedButton(title: "Get OTP")

                }
            }
            
            .frame(maxHeight: .infinity, alignment: .top)
        }
        .sheet(isPresented: $countrySheet) {
            
            NavigationStack{
                List(allCountries){ model in
                    HStack{
                        Text(model.flag)
                        Text(model.name)
                            .font(.body)
                        Spacer()
                        Text(model.dial_code)
                            .foregroundStyle(Color(.systemGray))
                    }
                    .onTapGesture {
                        self.countryFlag = model.flag
                        self.selectedDialCode = model.dial_code
                        self.countrySheet = false
                    }
                }
            }
            .presentationDetents([.medium, .large])
            .searchable(text: $searchCountries, prompt: "Search for a country")
        }
       
       
    }
    private var allCountries : [CPData]{
        if self.searchCountries.isEmpty{
            return CPData.allCountries
        } else{
            return CPData.allCountries.filter {
                $0.name.contains(self.searchCountries)
            }
        }
    }
}

#Preview {
    SignInView()
}
