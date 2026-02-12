//
//  RMService.swift
//  RickAndMorty
//
//  Created by Adegbite Paul  on 12/02/2026.
//

import Foundation

/// Primary API service object to get Rick and Morty Data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    
    ///Privatized constructor
    private init() {
        
    }
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The Type of object we expect to get back
    ///   - completion: CallBack with data or Error
    public func execute<T:Codable>(_ request : RMRequest,
                                   expecting type : T.Type
                                   completion : @escaping (Result<T,Error>) -> Void){
        
        
    }
}
