//
//  TrainBadge.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/2/24.
//

import SwiftUI

enum BadgeSize {
    case small
    case large
}

struct TrainBadge: View {
    let train: MTATrain
    var badgeSize: BadgeSize
    var body: some View {
        ZStack{
            Circle()
                .frame(width: self.badgeSize == .small ? 45 : 60)
                .foregroundStyle(getColorForTrain(train: train))
            Text(train.rawValue)
                .font(self.badgeSize == .small ? .title : .largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    TrainBadge(train: .l, badgeSize: .small)
}
