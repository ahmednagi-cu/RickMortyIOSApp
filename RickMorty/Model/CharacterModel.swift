//
//  CharacterModel.swift
//  RickMorty
//
//  Created by ahmed nagi on 18/04/2023.
//

import Foundation
  
struct CharacterModel: Codable {
    let id: Int
    let name: String
    let status: Characterstatus
    let species: String
    let type: String
    let gender: CharacterGender
    let origin: OriginModel
    let location: SingelLocationModel
    let image: String
    let episode: [String]
    let url: String
    let created: String
  
}


      


struct OriginModel: Codable {
    let name:String
    let url: String
}

struct SingelLocationModel: Codable {
    let name: String
    let url: String
}


enum Characterstatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}



enum CharacterGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
