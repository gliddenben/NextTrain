//
//  ContentView.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isMenuVisible = false
    var body: some View {
        VStack { // the stack for the whole screen
            HStack { // station dropdown box horizontal stack
                Button(action: {
                    self.isMenuVisible.toggle()
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                        .padding(.leading, 10)
                }
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
            
            if isMenuVisible {
                ScrollView(.vertical) {
                    VStack(alignment: .leading) {
                        Text("Menu Item 1")
                            .padding(2.5)
                            .font(.title)
                        Text("Menu Item 2")
                            .padding(2.5)
                            .font(.title)
                        Text("Menu Item 3")
                            .padding(2.5)
                            .font(.title)
                        Text("Menu Item 4")
                            .padding(2.5)
                            .font(.title)
                        Text("Menu Item 5")
                            .padding(2.5)
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(Color.black))
                }
            }
            
            ScrollView(.horizontal) { // list of trains available at this station
                HStack {
                    ForEach(MTATrain.allCases, id: \.self) {train in
                        TrainBadge(train: train, badgeSize: .large)}
                }
            }
            .scrollIndicators(.hidden)
            .padding(.leading, 7.5)
            .padding(.trailing, 7.5)
            
            ScrollView { // list of upcoming trains
                LazyVStack(spacing: 0) {
                    ForEach(MTATrain.allCases, id: \.self) {
                        train in TrainArrivalIcon(train: train)
                    }
                }
            }
            .padding(.top, 10)
            .scrollIndicators(.hidden)
            
            // logo at the bottom of the app
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
