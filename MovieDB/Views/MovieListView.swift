//
//  MovieListView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct MovieListView: View {
    @Binding var movies: [Movie]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                ForEach(movies) { movie in
                    MovieCardView(movie: movie)
                }
            }
            .padding(3)
        }
    }
}
