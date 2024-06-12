//
//  MovieCardView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct MovieCardView: View {
    let movie: Movie
    var body: some View {
        VStack(alignment: .leading) {
            MoviePosterRatingView(movie: movie)
                .padding(.bottom, 10)
            
            Text("\(movie.title)")
                .font(.subheadline)
                .lineLimit(3)
                .foregroundColor(.primary)
                .fixedSize(horizontal: false, vertical: true)
            
            Text("\(movie.releaseYear)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(width: cardWidth)
    }
}

private extension MovieCardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width/3.2
    }
}
