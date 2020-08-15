//
//  MusicLoadingFooter.swift
//  AppStoreJSONApis
//
//  Created by Joo Hee Kim on 20. 08. 15..
//  Copyright © 2020 Joo Hee. All rights reserved.
//

import UIKit

class MusicLoadingFooter: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let aiv = UIActivityIndicatorView(style: .large)
        aiv.color = .darkGray
        aiv.startAnimating()
        
        let label = UILabel(text: "Loading more...", font: .systemFont(ofSize: 16))
        
        let stackView = VerticalStackView(arrangedSubviews: [
            aiv, label
        ], spacing: 8)
        
        addSubview(stackView)
        stackView.centerInSuperview(size: .init(width: 200, height: 0))
        stackView.alignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
