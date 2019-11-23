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
    let cardDeckView = UIView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupCards()
}
    
    
    
   // MARK:- fileprivate
    fileprivate func setupLayout() {
           let overallStackView = UIStackView(arrangedSubviews: [topStackView, cardDeckView, buttonStackView])
           
           overallStackView.axis = .vertical
           view.addSubview(overallStackView)
           
           // stackView.frame = .init(x: 0, y: 0, width:420, height: 900)
           overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)  //adding overall margin
        
        overallStackView.bringSubviewToFront(cardDeckView)  //bring card's z-index to front 
       }
    
    fileprivate func setupCards(){
        
        print("dummy card")
        let cardView = CardView(frame: .zero)
        cardDeckView.addSubview(cardView)
        cardView.fillSuperview()
        
    }
       
}


