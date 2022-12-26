//
//  NewYearTreeView.swift
//  AwardsCollectionApp
//
//  Created by Buba on 26.12.2022.
//

import SwiftUI

struct NewYearTreeView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let hight = geometry.size.height
            let size = min(width, hight)
            
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.green, .red],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.5, y: size * 0.1))
                path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.2))
                path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.2))
            }
            .foregroundColor(.white)
            .opacity(0.8)
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.5, y: size * 0.2))
                path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.4))
                path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.4))
                path.closeSubpath()
            }
            .strokedPath(StrokeStyle(lineWidth: 4))
            .foregroundColor(.white)
            .opacity(0.8)
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.5, y: size * 0.4))
                path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.7))
                path.addLine(to: CGPoint(x: size * 0.2, y: size * 0.7))
            }
            .foregroundColor(.white)
            .opacity(0.8)
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.4, y: size * 0.7))
                path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.8))
                path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.8))
                path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.7))
                path.closeSubpath()
            }
            .foregroundColor(.brown)
            .opacity(0.8)
        }
    }
}

struct NewYearTreeView_Previews: PreviewProvider {
    static var previews: some View {
        NewYearTreeView()
            .frame(width: 300, height: 300)
    }
}
