//
//  HomePageView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 12) {
                TrendingView()
                NowPlayingView() 
                UpcomingView()
                TopRatedView()
            }
        }
    }
}

#Preview {
    HomePageView()
}
