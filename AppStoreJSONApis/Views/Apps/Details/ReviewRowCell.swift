//
//  ReviewRowCell.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 05. 08..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import UIKit

class ReviewRowCell: UICollectionViewCell {
    
    let reviewsController = ReviewsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        
        addSubview(reviewsController.view)
        reviewsController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
