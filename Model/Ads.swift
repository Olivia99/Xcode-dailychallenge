//
//  Ads.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/25/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import Foundation
import UIKit

struct Advertiser {
    let title: String
    let brandName: String
    let PosterName: String
    
    func toCardViewModel() -> CardViewModel{
        let attributedText = NSMutableAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 34, weight: .heavy)])
        
        attributedText.append(NSAttributedString(string: "\n" + brandName, attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .medium)]))
        
                     
           return
               CardViewModel(imageName: PosterName, attributedString: attributedText, textAlignmnet: .center)
}
}





