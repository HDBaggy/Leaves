//
//  UIView+Extensions.swift
//  Wikileaf
//
//  Created by Harshit on 25/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addShadow(){
        
        //        self.layer.shadowRadius = 3
        //        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        //        self.layer.shadowColor = UIColor.black.cgColor
        //        self.layer.shadowOpacity = 0.75
        
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 3.0
    }
    
    func addBorder(){
        
        self.layer.masksToBounds = true
        self.layer.borderColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1).cgColor
        self.layer.borderWidth = 1.0
    }

    func makeRoundedView(){
    
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.width/2
    }
    
    func makeRoundedCorner(){
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 3.0
    }
}
