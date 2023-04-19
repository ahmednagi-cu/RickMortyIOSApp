//
//  LocationModel.swift
//  RickMorty
//
//  Created by ahmed nagi on 18/04/2023.
//

import Foundation
struct LocationModel: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}


      

