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
    ///   - completion: CallBack with data or Error
    public func execute(_ request : RMRequest,completion : @escaping () -> Void){
        
    }
}
