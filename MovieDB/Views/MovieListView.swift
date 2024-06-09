//
//  MovieListView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct MovieListView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                ForEach(0 ..< 10) { card in
                    MovieCardView()
                }
            }
            .padding(3)
        }
    }
}

#Preview {
    MovieListView()
}
