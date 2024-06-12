//
//  APIService.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import Foundation
import Combine

class APIService {
    
    private let apiKey = "c77a451f55684047265eed8393fe387d"
    private let baseUrl = "https://api.themoviedb.org/3/movie/"
    
    func fetchMovies(
        from endpoint: MovieCategoryEndpoints,
        completion: @escaping (Result<[Movie], Error>) -> ())
    {
        let urlString = baseUrl + endpoint.rawValue
        var components = URLComponents(string: urlString)
        components?.queryItems = [
            URLQueryItem(name: "api_key", value: apiKey)
        ]
        
        guard let url = components?.url else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                let error = NSError(domain: "dataNilError", code: -100001, userInfo: nil)
                completion(.failure(error))
                return
            }
            
            do {
                let userResponse = try JSONDecoder().decode(MovieResponse.self, from: data)
                print(userResponse)
                completion(.success(userResponse.results))
            }
            catch let jsonError {
                completion(.failure(jsonError))
                print(jsonError)
            }
            
        }.resume()
    }
}


enum MovieCategoryEndpoints: String {
    case nowPlaying = "now_playing"
    case upcoming = "upcoming"
    case topRated = "top_rated"
    case popular = "popular"
}

