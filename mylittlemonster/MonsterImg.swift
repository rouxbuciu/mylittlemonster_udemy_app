//
//  MonsterImg.swift
//  mylittlemonster
//
//  Created by roux g. buciu on 2016-07-11.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
   
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        var x = 1
        
        while x <= 4 {
        let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
            x += 1
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
       
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        var x = 1
        
        while x <= 5 {
        let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
            x += 1
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}
