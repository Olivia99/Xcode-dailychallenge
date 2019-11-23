//
//  ViewController.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let topStackView = TopNavigationStackView()
    let buttonStackView = HomeBottomControlStackView()
    let blueView = UIView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        blueView.backgroundColor = .blue
        setupLayout()

}
    
   // MARK:- fileprivate
    fileprivate func setupLayout() {
           let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonStackView])
           
           overallStackView.axis = .vertical
           view.addSubview(overallStackView)
           
           // stackView.frame = .init(x: 0, y: 0, width:420, height: 900)
           overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
       }
       
}


