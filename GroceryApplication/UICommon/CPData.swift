//
//  CPData.swift
//  GroceryApplication
//
//  Created by Vansh Tyagi on 30/08/26.
//

import Foundation

class CPData: Codable, Identifiable{
    let id: String
    let name: String
    let flag: String
    let code: String
    let dial_code: String
    let pattern: String
    let limit: Int
    
    static let allCountries :[CPData] = Bundle.main.decode("CountryNumbers.json")
}


extension Bundle {
    func decode<T : Codable>(_ file : String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("There is an issue in the \(file)")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("There is an issue in the \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let countries = try? decoder.decode(T.self, from: data) else{
            fatalError("There is problem in parsing the data")
        }
        return countries
    }
}
