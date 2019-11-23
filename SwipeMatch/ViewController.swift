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
        
      
        let topStackView = TopNavigationStackView()
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 80).isActive = true;
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        
        // bottom row of buttons
    
        
    let buttonStackView = HomeBottomControlStackView()
      
        
       
        
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonStackView])
        
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
       
       // stackView.frame = .init(x: 0, y: 0, width:420, height: 900)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)

}
}


