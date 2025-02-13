//
//  SearchResult.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 05. 05..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackId: Int
    let trackName: String
    let primaryGenreName: String
    let averageUserRating: Float?
    let screenshotUrls: [String]?
    let artworkUrl100: String   // app icon
    var formattedPrice: String?
    let description: String?
    var releaseNotes: String?
    var artistName: String?
    var collectionName: String?
}
