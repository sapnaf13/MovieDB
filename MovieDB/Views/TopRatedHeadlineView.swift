//
//  TopRatedHeadlineView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 09/06/24.
//

import SwiftUI

struct TopRatedHeadlineView: View {
    var body: some View {
        HStack {
            Text("Top Rated")
                .font(.title2)
                .bold()
            
            Spacer()
            
            Button(action: {
            }) {
                Text("all >")
                    .font(.footnote)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(Color.blue.opacity(0.4))
                    .foregroundColor(.white)
                    .cornerRadius(14)
            }
            .padding(.trailing, 16)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
    }


#Preview {
    TopRatedHeadlineView()
}
