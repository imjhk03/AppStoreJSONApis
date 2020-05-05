//
//  BaseListController.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 05. 06..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
