//
//  MoviePosterRatingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct MoviePosterRatingView: View {
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .frame(width: imageWidth, height: imageHeight)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 1)
                )
            
            RatingIndicatorView()
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

#Preview {
    MoviePosterRatingView()
}
