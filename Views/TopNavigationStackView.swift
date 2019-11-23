//
//  TopNavigationStackView.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    let chatButton = UIButton(type: .system)
          let profileButton = UIButton(type:.system)
          let fireImage = UIImageView(image:#imageLiteral(resourceName: "app_icon"))
          
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      
        fireImage.contentMode = .scaleAspectFit
        chatButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)
        profileButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [profileButton, UIView(), fireImage,UIView(), chatButton].forEach { (v) in
            addArrangedSubview(v)
        }
        
        distribution = .equalCentering
        
        
//        let buttons =  [#imageLiteral(resourceName: "top_left_profile"), #imageLiteral(resourceName: "app_icon"), #imageLiteral(resourceName: "top_right_messages") ].map { (img) -> UIView in
//            let button = UIButton(type: .system)
//            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
//            return button
//
//        }
//
//        buttons.forEach { (v) in
//            addArrangedSubview(v)
//        }
        
    }
    required init(coder: NSCoder) {
        fatalError()
    }
}
