//
//  NetworkUtils.swift
//  NextTrain
//
//  Created by Ben Glidden on 3/9/24.
//

import Foundation

struct NetworkUtils {
    static func sendNetworkRequest(to url: URL) async throws -> Data {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(Secrets.ACCESS_KEY, forHTTPHeaderField: "x-api-key")
        
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode)
        else {
            throw URLError(.badServerResponse)
        }
        return data
    }
}
