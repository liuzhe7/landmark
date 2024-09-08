//
//  BadgeBackground.swift
//  landmark
//
//  Created by solar on 2024/9/8.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        Path { path in
            var width: CGFloat = 100.0
            let height = width
            
            path.move(to: CGPoint(
                x: width*0.95,
                y: height * 0.20
            ))
        }
        .fill(.black)
    }
}

#Preview {
    BadgeBackground()
}
