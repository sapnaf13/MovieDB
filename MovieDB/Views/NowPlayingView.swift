//
//  NowPlayingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct NowPlayingView: View {
    var body: some View {
        VStack(alignment: .leading){
            NowPlayingHeadlineView()
            MovieListView()
        }
        .background(Color(UIColor.systemGray6))
    }
}

#Preview {
    NowPlayingView()
}
