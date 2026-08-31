//
//  countryPickerUI.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import SwiftUI
import CountryPicker

struct countryPickerUI: UIViewControllerRepresentable {
    
   @Binding var country: Country?
    
    class Coordinator: NSObject, CountryPickerDelegate {
        var parent: countryPickerUI
        
        init(_ parent: countryPickerUI) {
            self.parent = parent
        }
        
        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
    }
  
    func makeUIViewController(context: Context) -> some CountryPickerViewController {
        
        let countryPicker = CountryPickerViewController()
        countryPicker.selectedCountry = "IN"
        countryPicker.delegate = context.coordinator
        
        return countryPicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}


