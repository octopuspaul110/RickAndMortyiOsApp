//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Adegbite Paul  on 12/02/2026.
//

import Foundation

struct RMEpisode : Codable {
    
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
    
}
