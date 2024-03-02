//
//  TrainBadge.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/2/24.
//

import SwiftUI

struct TrainBadge: View {
    let train: MTATrain
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(getColorForTrain(train: train))
    }
}

#Preview {
    TrainBadge(train: .six)
}
