//
//  BetterSnappingLayout.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee on 20. 05. 07..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import UIKit

class BetterSnappingLayout: UICollectionViewFlowLayout {
    // snap behavior
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = collectionView else {
            return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        }

        var offsetAdjustment = CGFloat.greatestFiniteMagnitude
        let horizontalOffset = proposedContentOffset.x + collectionView.contentInset.left

        let targetRect = CGRect(x: proposedContentOffset.x, y: 0, width: collectionView.bounds.size.width, height: collectionView.bounds.size.height)

        let layoutAttributesArray = super.layoutAttributesForElements(in: targetRect)

//        layoutAttributesArray?.forEach({ (layoutAttributes) in
//            let itemOffset = layoutAttributes.frame.origin.x
//            if fabsf(Float(itemOffset - horizontalOffset)) < fabsf(Float(offsetAdjustment)) {
//                offsetAdjustment = itemOffset - horizontalOffset
//            }
//        })
        
        layoutAttributesArray?.forEach({ (layoutAttributes) in
            let itemOffset = layoutAttributes.frame.origin.x
            let itemWidth = Float(layoutAttributes.frame.width)
            let direction: Float = velocity.x > 0 ? 1 : -1
            if fabsf(Float(itemOffset - horizontalOffset)) < fabsf(Float(offsetAdjustment)) + itemWidth * direction {
                offsetAdjustment = itemOffset - horizontalOffset
            }
        })

        return CGPoint(x: proposedContentOffset.x + offsetAdjustment, y: proposedContentOffset.y)
    }
    
}
