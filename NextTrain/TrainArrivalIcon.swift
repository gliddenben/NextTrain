//
//  TrainArrivalIcon.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/3/24.
//

import SwiftUI

struct TrainArrivalIcon: View {
    let train: MTATrain
    var body: some View {
        HStack {
            SmallTrainBadge(train: train)
                .padding(.leading, 10)
                .padding(.trailing, 20)
            Text("Direction")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            VStack{
                // TODO: need to update the first text string (currently "5") so that it's a function of train arrival time
                Text("5")
                    .font(.title)
                    .fontWeight(.medium)
                Text("min")
            }
            .padding(.leading, 20)
            .padding(.top, 7.5)
            .padding(.bottom, 7.5)
            .padding(.trailing, 10)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(Color.black, lineWidth: 2.0))
    }
}

#Preview {
    TrainArrivalIcon(train: .six)
}
