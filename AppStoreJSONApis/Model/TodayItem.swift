//
//  TodayItem.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 07. 16..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import UIKit

struct TodayItem {
    
    let category: String
    let title: String
    let image: UIImage
    let description: String
    let backgroundColor: UIColor
    
    // enum
    let cellType: CellType
    
    let apps: [FeedResult]
    
    enum CellType: String {
        case single, multiple
    }
    
}
