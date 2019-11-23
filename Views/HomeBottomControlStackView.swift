//
//  HomeControlStackView.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class HomeBottomControlStackView: UIStackView {

    override init(frame: CGRect){
        super.init(frame: frame)
         distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 120).isActive = true
         
        let subviews = [#imageLiteral(resourceName: "refresh_circle"), #imageLiteral(resourceName: "dismiss_circle"), #imageLiteral(resourceName: "super_like_circle"), #imageLiteral(resourceName: "like_circle"), #imageLiteral(resourceName: "boost_circle")].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)  //if not using .alwaysOriginal, you will get a blue overview of the icon rather than the real icon
            return button
        }
        
        subviews.forEach { (v) in
         addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
