//
//  MovieCardView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct MovieCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MoviePosterRatingView()
                .padding(.bottom, 10)
            
            Text("movie name")
                .font(.headline)
                .lineLimit(2)
                .foregroundColor(.primary)
            
            Text("2024")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    MovieCardView()
}
