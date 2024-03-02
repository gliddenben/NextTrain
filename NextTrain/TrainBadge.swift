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
        ZStack{
            Circle()
                .frame(width: 60)
                .foregroundStyle(getColorForTrain(train: train))
            Text(train.rawValue)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    TrainBadge(train: .l)
}
