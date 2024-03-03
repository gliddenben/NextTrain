//
//  SmallTrainBadge.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/3/24.
//

import SwiftUI

struct SmallTrainBadge: View {
    let train: MTATrain
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 45)
                .foregroundStyle(getColorForTrain(train: train))
            Text(train.rawValue)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    SmallTrainBadge(train: .l)
}
