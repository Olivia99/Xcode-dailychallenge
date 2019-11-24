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
    fileprivate let threshold: CGFloat = 100
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
            handleEnded(gesture)
        default:
          ()
        }
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    

      fileprivate func handleChanged(_ gesture: UIPanGestureRecognizer) {
         let translation = gesture.translation(in: nil)
     
        //rotation heppens here
        let degree: CGFloat = translation.x / 15
        let angle = degree * .pi / 180
        let rotationAnimation = CGAffineTransform(rotationAngle: angle)
        self.transform = rotationAnimation.translatedBy(x: translation.x, y: translation.y )
        
//
//          self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
      }
    
    fileprivate func handleEnded(_ gesture: UIPanGestureRecognizer) {
     
        let dismissCard = gesture.translation(in: nil).x > threshold
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.4, options: .curveEaseOut, animations: {
           
            if dismissCard {
                self.frame = CGRect(x: 1000, y: 0, width: self.frame.width, height: self.frame.height)
                
            }else{
                 self.transform = .identity
            }
            
            
        })  { (_) in
             self.transform = .identity
            self.frame = CGRect(x: 1000, y: 0, width: self.superview!.frame.width, height: self.superview!.frame.height)
              
          }
      }
      
}
