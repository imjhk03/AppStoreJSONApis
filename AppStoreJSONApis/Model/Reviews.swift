//
//  Reviews.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 05. 08..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import Foundation

struct Reviews: Decodable {
    let feed: ReviewFeed
}

struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let author: Author
    let title: Label
    let content: Label
}

struct Author: Decodable {
    let name: Label
}

struct Label: Decodable {
    let label: String
}
