//
//  Services.swift
//  RickMorty
//
//  Created by ahmed nagi on 19/04/2023.
//

import Foundation

/// Primary Api services to get data
final class ApiServices {
    
    /// Shared singleton  instance
    static let shared = ApiServices()
    
    private init(){}
    
    /// Send Rick Morty Api Call
    /// - Parameters:
    ///   - request: Requesr instance
    ///   - completion: Callback with data or error
    public func excute<T: Codable>(_ request: ApiRequest,expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void){
        
        
    }
}
