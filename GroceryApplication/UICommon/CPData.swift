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
}


//extension
