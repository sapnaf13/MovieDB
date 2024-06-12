//
//  TopRatedView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct TopRatedView: View {
    @Binding var movies: [Movie]
    var body: some View {
        VStack(alignment: .leading){
            TopRatedHeadlineView()
            MovieListView(movies: $movies)
        }
        .background(Color(UIColor.systemGray6))
    }
}

