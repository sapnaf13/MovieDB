//
//  NowPlayingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct NowPlayingView: View {
    @Binding var movies: [Movie]
    var body: some View {
        VStack(alignment: .leading){
            NowPlayingHeadlineView()
            MovieListView(movies: $movies)
        }
        .background(Color(UIColor.systemGray6))
    }
}

