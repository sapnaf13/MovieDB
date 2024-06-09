//
//  TrendingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct TrendingView: View {
    var body: some View {
        VStack(alignment: .leading){
            TrendingHeadlineView()
            MovieListView()
        }
        .background(Color(UIColor.systemGray6))
    }
}

#Preview {
    TrendingView()
}
