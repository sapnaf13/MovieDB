//
//  TrendingHeadlineView.swift
//  MovieDB
//
//  Created by Harish Fulwani on 08/06/24.
//

import SwiftUI

struct TrendingHeadlineView: View {
    @Binding var selectedTimeFrame: TimeFrame
    
    var body: some View {
        HStack {
            Text("Trending")
                .font(.title2)
                .bold()
            
            Spacer()
            
            HStack(spacing: 0) {
                Button(action: {
                    selectedTimeFrame = .today
                    print(selectedTimeFrame)
                }) {
                    Text(TimeFrame.today.rawValue)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(selectedTimeFrame == .today ? Color.blue.opacity(0.4) : Color.clear)
                        .foregroundColor(selectedTimeFrame == .today ? .white : .primary)
                        .cornerRadius(16, corners: [.topLeft, .bottomLeft])
                }
                
                Button(action: {
                    selectedTimeFrame = .thisWeek
                    print(selectedTimeFrame)
                }) {
                    Text(TimeFrame.thisWeek.rawValue)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(selectedTimeFrame == .thisWeek ? Color.blue.opacity(0.4) : Color.clear)
                        .foregroundColor(selectedTimeFrame == .thisWeek ? .white : .primary)
                        .cornerRadius(16, corners: [.topRight, .bottomRight])
                }
            }
            .background(Color(UIColor.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


enum TimeFrame: String {
    case today = "Today"
    case thisWeek = "This week"
}

