//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Adegbite Paul  on 12/02/2026.
//

import Foundation


/// Object that represents a single api call
final class RMRequest {
    
    /// API constants
    private struct Constants {
        static let baseurl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint : RMEndPoint
    
    /// Path components for API, if any
    private let pathComponents : Set<String>
    
    /// Query arguments for API, if any
    private let queryParameters : [URLQueryItem]
    
    /// constructed url for the api request in string format
    private var urlString : String {
        var string = Constants.baseurl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    /// Computed and constructed API utl
    public var url : URL? {
        return URL(string : urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    //mark:- Public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    init(
        endpoint: RMEndPoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
            self.endpoint = endpoint
            self.pathComponents = pathComponents
            self.queryParameters = queryParameters
        }
}
