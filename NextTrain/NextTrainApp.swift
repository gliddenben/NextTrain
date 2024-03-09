//
//  NextTrainApp.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/2/24.
//

import SwiftUI
import TabularData

@main
struct NextTrainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                let stationsFile: URL = Bundle.main.url(forResource: "Stations", withExtension: ".csv")!
                let stationRows = try! DataFrame(contentsOfCSVFile: stationsFile)
                var stations: [String: MTAStation] = [:]
                
                for stationRow in stationRows.rows {
                    let station = MTAStation(
                        stationID: stationRow["Station ID"] as! Int,
                        complexID: stationRow["Complex ID"]  as! Int,
                        gtfsStopID: stationRow["GTFS Stop ID"]  as! String,
                        division: stationRow["Division"]  as! String,
                        line: stationRow["Line"]  as! String,
                        stopName: stationRow["Stop Name"]  as! String,
                        borough: stationRow["Borough"] as! String,
                        daytimeRoutes: stationRow["Daytime Routes"]  as! String,
                        structure: stationRow["Structure"] as! String,
                        gtfsLatitude: stationRow["GTFS Latitude"] as! Double,
                        gtfsLongitude: stationRow["GTFS Longitude"] as! Double,
                        northDirectionLabel: stationRow["North Direction Label"] as? String ?? "",
                        southDirectionLabel: stationRow["South Direction Label"] as? String ?? "",
                        ada: stationRow["ADA"] as? String ?? "",
                        adaDirectionNotes: stationRow["ADA Direction Notes"] as? String ?? "",
                        adaNB: stationRow["ADA NB"] as? String ?? "",
                        adaSB: stationRow["ADA SB"] as? String ?? "",
                        capitalOutageNB: stationRow["Capital Outage NB"] as? String ?? "",
                        capitalOutageSB: stationRow["Capital Outage SB"] as? String ?? ""
                    )
                    stations[station.gtfsStopID] = station
                }
                Task {
                    let data = try await NetworkUtils.sendNetworkRequest(to: .l)
                    let feed = try TransitRealtime_FeedMessage(serializedData: data)
                }
            }
        }
    }
}
