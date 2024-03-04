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
            HStack {
                Image(systemName: "line.horizontal.3")
                    .imageScale(.large)
                    .padding(.leading, 10)
                Text("Station Name")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(15)
            }
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.5)))
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color.black, lineWidth: 2.0))
            .padding(5)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(MTATrain.allCases, id: \.self) {train in
                        TrainBadge(train: train, badgeSize: .large)}
                }
            }
            .scrollIndicators(.hidden)
            .padding(.leading, 7.5)
            .padding(.trailing, 7.5)
            ScrollView {
                LazyVStack(spacing: 0) {
                    ForEach(MTATrain.allCases, id: \.self) {
                        train in TrainArrivalIcon(train: train)
                    }
                }
            }
            .padding(.top, 10)
            .scrollIndicators(.hidden)
            Image(systemName: "tram.fill")
                .imageScale(.medium)
                .foregroundStyle(.green)
                .font(.largeTitle)
            Text("NextTrain")
                .font(.largeTitle)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    ContentView()
}
