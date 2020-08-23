//
//  SocialApp.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 05. 07..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import Foundation

struct SocialApp: Decodable, Hashable {
    let id, name, imageUrl, tagline: String
}
