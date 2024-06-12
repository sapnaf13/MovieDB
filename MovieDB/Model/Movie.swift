//
//  Movie.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable, Identifiable {
    let id: Int
    let title: String
    let release_date: String
    let backdrop_path: String?
    let vote_average: Double
    
    var unique_id: Int {
        return id
    }
    
    var releaseYear: String {
        String(release_date.prefix(4))
    }
    
    var releaseDate: Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: release_date)
    }
    
    var posterURL: URL? {
        if let path = backdrop_path {
            return URL(string: "https://image.tmdb.org/t/p/w500\(path)")
        }
        return nil
    }
}
