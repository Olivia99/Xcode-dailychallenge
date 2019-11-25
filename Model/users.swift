//
//  users.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/25/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import Foundation
import UIKit

struct User{
    //define properties for our model
    
    let name: String
    let age: Int
    let profession: String
    let imageName: String
    
    func toCardViewModel() -> CardViewModel{
       let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 34, weight: .heavy)])
                  attributedText.append(NSAttributedString(string: "  \(age)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .regular)]))
                  attributedText.append(NSAttributedString(string: "  \n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))
                  
        return
            CardViewModel(imageName: imageName, attributedString: attributedText, textAlignmnet: .left)

    }
}


