//
//  ViewController.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class HomeControll: UIViewController {
    let topStackView = TopNavigationStackView()
    let buttonStackView = HomeBottomControlStackView()
    let cardDeckView = UIView()
 
    
    let cardviewmodels = [
        User(name: "Kelly", age: 23, profession: "DJ", imageName: "kelly2").toCardViewModel(),
        User(name: "Jason Momoa", age: 40, profession: "Actor", imageName: "jason1").toCardViewModel(),
        Advertiser(title: "Jieying's Website", brandName: "jieying.webflow.io", PosterName: "dailyChallenge").toCardViewModel()
        
    ]
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
        cardviewmodels.forEach { (cardVM) in
            let cardView = CardView(frame: .zero)
            cardView.imageView.image = UIImage(named:cardVM.imageName)
            cardView.informationLable.attributedText = cardVM.attributedString
            cardView.informationLable.textAlignment = cardVM.textAlignmnet
            
            cardDeckView.addSubview(cardView)
            cardView.fillSuperview()
        }
//        users.forEach{
//            (user) in
//            let cardView = CardView(frame: .zero)
//            cardView.imageView.image = UIImage(named: user.imageName)
//                   cardDeckView.addSubview(cardView)
//            cardView.informationLable.text = "\(user.name) \(user.age)\n\(user.profession)"
//
//
//            cardView.informationLable.attributedText = attributedText
//
//                   cardView.fillSuperview()
//
//        }
       
        
    }
       
}


