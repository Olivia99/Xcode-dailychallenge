//
//  CardView.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class CardView: UIView {
    
    //threshold configuration
    let informationLable = UILabel()
    let imageView = UIImageView(image: #imageLiteral(resourceName: "kelly2"))
    let gradientLayer = CAGradientLayer()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlepan))
        addGestureRecognizer(panGesture)
    }
    @objc fileprivate func handlepan(gesture: UIPanGestureRecognizer){
        switch gesture.state {
        case .changed:
            handleChanged(gesture)
        case .ended:
            handleEnded(gesture)
        default:
          ()
        }
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
     
    
    fileprivate func setupLayout() {
        layer.cornerRadius = 10
        clipsToBounds = true
        
        imageView.contentMode = .scaleAspectFill
        addSubview(imageView)
        
        //add gradient to card view
        setupGrandient()
        
        addSubview(informationLable)
        informationLable.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 16, right: 16))
        informationLable.text = "Test name test name "
        informationLable.textColor = .white
        informationLable.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        informationLable.numberOfLines = 0 //allow multiple lines
        imageView.fillSuperview()
    }
    
    
    fileprivate func setupGrandient() {
        // how to draw a gradient
     //if you have a UIView then you can access to "layer"
     
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.5,1.1]
        
        
        layer.addSublayer(gradientLayer)
        
    }
    
    
    override func layoutSubviews() {
        gradientLayer.frame = self.frame
    }
      fileprivate func handleChanged(_ gesture: UIPanGestureRecognizer) {
         let translation = gesture.translation(in: nil)
     
        //rotation heppens here
        let degree: CGFloat = translation.x / 20
        let angle = degree * .pi / 180
        let rotationAnimation = CGAffineTransform(rotationAngle: angle)
        self.transform = rotationAnimation.translatedBy(x: translation.x, y: translation.y )
        
//
//          self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
      }
    
    fileprivate func handleEnded(_ gesture: UIPanGestureRecognizer) {
         let threshold: CGFloat = 100
        let translationDirection: CGFloat = gesture.translation(in: nil).x > 0 ? 1: -1
        let dismissCard = abs(gesture.translation(in: nil).x) > threshold
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.4, options: .curveEaseOut, animations: {
           
            if dismissCard {
                self.frame = CGRect(x: 600 * translationDirection, y: 0, width: self.superview!.frame.width, height: self.superview!.frame.height)
//
            }else{
                 self.transform = .identity
            }
        })  { (_) in
        self.transform = .identity
            if dismissCard{
                
                self.removeFromSuperview()
            }
//                  self.frame = CGRect(x: 0, y: 0, width: self.superview!.frame.width, height: self.superview!.frame.height)

              
          }
      }
      
}
