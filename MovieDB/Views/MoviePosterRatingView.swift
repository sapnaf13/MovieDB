//
//  MoviePosterRatingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct MoviePosterRatingView: View {
    let movie: Movie
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            
            if let posterURL = movie.posterURL {
                AsyncImage(url: posterURL ) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: imageWidth, height: imageHeight)
                        .clipped()
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: imageWidth, height: imageHeight)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            RatingIndicatorView(rating: movie.vote_average)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(8)
                .offset(x: 5, y: 25)
        }
        .frame(width: imageWidth, height: imageHeight)
        
    }
}

private extension MoviePosterRatingView {
    var imageWidth: CGFloat {
        UIScreen.main.bounds.width/3.2
    }
    
    var imageHeight: CGFloat {
        UIScreen.main.bounds.height/4
    }
}
