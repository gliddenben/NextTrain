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
            TrainBadge(train: train, badgeSize: .small)
                .padding(.trailing, 27.5)
            
            // TODO: need to update direction so that it's a function of the train final destination
            Text("Direction")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.leading, 27.5)
                .padding(.trailing, 27.5)
            VStack{
                // TODO: need to update the first text string (currently "5") so that it's a function of train arrival time
                Text("5")
                    .font(.title)
                    .fontWeight(.medium)
                Text("min")
            }
            .padding(.leading, 27.5)
            .padding(.top, 7.5)
            .padding(.bottom, 7.5)
        }
        .frame(maxWidth: .infinity)
        .overlay(
            Rectangle()
                .stroke(Color.black, lineWidth: 2.0))
    }
}

#Preview {
    TrainArrivalIcon(train: .six)
}
