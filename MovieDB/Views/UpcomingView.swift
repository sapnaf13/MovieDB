//
//  UpcomingView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct UpcomingView: View {
    var body: some View {
        VStack(alignment: .leading){
            UpcomingHeadlineView()
            MovieListView()
        }
        .background(Color(UIColor.systemGray6))
    }
}

#Preview {
    UpcomingView()
}
