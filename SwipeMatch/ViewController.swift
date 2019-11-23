//
//  ViewController.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let grayView = UIView()
        grayView.backgroundColor = .gray
        
        let subView = [UIColor.gray, UIColor.darkGray, UIColor.black].map{
            
            (color) -> UIView in
            let v = UIView()
            v.backgroundColor = color
            
            return v
        }
        
        let topStackView = UIStackView(arrangedSubviews: subView)
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true;
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        
        // bottom row of buttons
        let buttonSubview = [UIColor.red, .green, .blue, .yellow, .purple].map
        {(color) ->UIView in
           let v = UIView()
            v.backgroundColor = color
            return v
        }
        
    let buttonStackView = UIStackView(arrangedSubviews: buttonSubview)
        buttonStackView.distribution = .fillEqually
        
        buttonStackView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonStackView])
        
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
       
       // stackView.frame = .init(x: 0, y: 0, width:420, height: 900)
        overallStackView.fillSuperview()

}
}


