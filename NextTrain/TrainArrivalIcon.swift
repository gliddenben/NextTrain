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
            TrainBadge(train: train)
                .padding(.leading, 15)
                .padding(.trailing, 35)
            Text("Direction")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.trailing, 25)
            VStack{
                // TODO: need to update the first text string (currently "5") so that it's a function of train arrival time
                Text("5")
                    .font(.title)
                    .fontWeight(.medium)
                Text("min")
            }
            .padding(10)
            .padding(.trailing, 10)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.black, lineWidth: 2.0))
    }
}

#Preview {
    TrainArrivalIcon(train: .six)
}
