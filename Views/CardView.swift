//
//  CardView.swift
//  SwipeMatch
//
//  Created by JieyingYang  on 11/22/19.
//  Copyright © 2019 JieyingYang . All rights reserved.
//

import UIKit

class CardView: UIView {
    
    fileprivate let imageView = UIImageView(image: #imageLiteral(resourceName: "kelly2"))
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        clipsToBounds = true 
        addSubview(imageView)
        imageView.fillSuperview()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlepan))
        
        addGestureRecognizer(panGesture)
    }
    
    
  
    
    @objc fileprivate func handlepan(gesture: UIPanGestureRecognizer){
       
        
        switch gesture.state {
        case .changed:
            handleChanged(gesture)
        case .ended:
            handleEnded()
        default:
          ()
        }
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    fileprivate func handleEnded() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.4, options: .curveEaseOut, animations: {self.transform = .identity})  { (_) in
              
          }
      }
      
      fileprivate func handleChanged(_ gesture: UIPanGestureRecognizer) {
          let translation = gesture.translation(in: nil)
          self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
      }
}
