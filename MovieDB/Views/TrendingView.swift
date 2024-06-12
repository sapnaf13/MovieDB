//
//  TrendingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct TrendingView: View {
    @State private var selectedTimeFrame: TimeFrame = .today
    @Binding var movies: [Movie]
    
    var filteredMovies: [Movie] {
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())
        let weekEnd = calendar.date(byAdding: .day, value: 7, to: today) ?? Date()
        
        switch selectedTimeFrame {
        case .today:
            return movies.filter { movie in
                guard let releaseDate = movie.releaseDate else { return false }
                return calendar.isDateInToday(releaseDate)
            }
        case .thisWeek:
            return movies.filter { movie in
                guard let releaseDate = movie.releaseDate else { return false }
                return releaseDate >= today && releaseDate < weekEnd
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            TrendingHeadlineView(selectedTimeFrame: $selectedTimeFrame)
            MovieListView(movies: $movies)
        }
        .background(Color(UIColor.systemGray6))
    }
}

