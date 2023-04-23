//
//  Request.swift
//  RickMorty
//
//  Created by ahmed nagi on 19/04/2023.
//

import Foundation

final class ApiRequest {
    // Base url
    // EndPoint
    // Path components
    // Query Parameters
    // https://rickandmortyapi.com/api/character/2
    private struct Constants {
        static let baseurl = "https://rickandmortyapi.com/api"
    }
    private let endPoint: ApiEndPoint
    private let pathComponents : Set<String>
    private let queryParameters :[URLQueryItem]
    private var urlString: String {
        var string = Constants.baseurl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        
        if !queryParameters.isEmpty {
            string += "?"
            
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            string += argumentString
        }
        
        
        return string
    }
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public init(endPoint: ApiEndPoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
