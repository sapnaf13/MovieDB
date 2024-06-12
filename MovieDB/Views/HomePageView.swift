//
//  HomePageView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct HomePageView: View {
    @StateObject private var viewModel = MovieViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 40) {
                TrendingView(movies: $viewModel.popularMovies)
                NowPlayingView(movies: $viewModel.nowPlayingMovies)
                UpcomingView(movies: $viewModel.upcomingMovies )
                TopRatedView(movies: $viewModel.topRatedMovies)
            }
        }
        .onAppear {
            viewModel.fetchMovies()
        }
    }
}

