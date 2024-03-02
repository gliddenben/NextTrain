//
//  ContentView.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(MTATrain.allCases, id: \.self) {train in
                        TrainBadge(train: train)}
                }
            }.scrollIndicators(.hidden)
            Spacer()
            Image(systemName: "tram.fill")
                .imageScale(.large)
                .foregroundStyle(.green)
                .font(.largeTitle)
            Text("NextTrain")
                .font(.largeTitle)
                .fontWeight(.thin)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
