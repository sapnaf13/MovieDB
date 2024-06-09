//
//  RatingIndicatorView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct RatingIndicatorView: View {
    
    @State private var rating: Double = 6.5
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
            ZStack {
                
                Circle()
                    .stroke(lineWidth: 10)
                    .opacity(0.2)
                    .foregroundColor(Color.green)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(self.rating / 10.0))
                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.green)
                    .rotationEffect(.degrees(-90))
                
                Circle()
                    .fill(Color.white)
                
                Text(String(format: "%.1f", self.rating))
                    .font(.subheadline)
                    .bold()
                
            }
            .padding(5)
        }
    }
}

#Preview {
    RatingIndicatorView()
}
