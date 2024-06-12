//
//  MovieViewModel.swift
//  MovieDB
//
//  Created by Harish Fulwani on 10/06/24.
//

import Foundation
import Combine

class MovieViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    @Published var nowPlayingMovies: [Movie] = []
    @Published var popularMovies: [Movie] = []
    @Published var topRatedMovies: [Movie] = []
    @Published var upcomingMovies: [Movie] = []
    
    
    private let apiService = APIService()
    private let cancellable = Set<AnyCancellable>()
    
    func fetchMovies() {
        fetchMovies(from: .nowPlaying) { [weak self] movies in
            self?.nowPlayingMovies = movies
        }
        fetchMovies(from: .popular) { [weak self] movies in
            self?.popularMovies = movies
        }
        fetchMovies(from: .topRated) { [weak self] movies in
            self?.topRatedMovies = movies
        }
        fetchMovies(from: .upcoming) { [weak self] movies in
            self?.upcomingMovies = movies
        }
    }
    
    func fetchMovies(from category: MovieCategoryEndpoints,completion: @escaping ([Movie]) -> Void) {
        self.isLoading = true
        self.errorMessage = nil
        
        apiService.fetchMovies(from: category) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let movies):
                    completion(movies)
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
