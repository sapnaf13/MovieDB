//
//  TopRatedView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct TopRatedView: View {
    var body: some View {
        VStack(alignment: .leading){
            TopRatedHeadlineView()
            MovieListView()
        }
        .background(Color(UIColor.systemGray6))
    }
}

#Preview {
    TopRatedView()
}
