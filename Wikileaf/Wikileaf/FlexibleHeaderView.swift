//
//  FlexibleHeaderView.swift
//  Wikileaf
//
//  Created by Harshit on 30/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import GSKStretchyHeaderView

class FlexibleHeaderView: GSKStretchyHeaderView {

    @IBOutlet weak var imgDispensary: UIImageView!
    @IBOutlet weak var lblDispensaryTitle: UILabel!
    
    override func didChangeStretchFactor(_ stretchFactor: CGFloat) {
        print("Stretched by \(stretchFactor)")
        
        if stretchFactor < 0.7 {
        
            imgDispensary.alpha = 0

        } else {
        
            imgDispensary.alpha = stretchFactor
        }

        lblDispensaryTitle.center = CGPoint(x: lblDispensaryTitle.center.x, y: lblDispensaryTitle.center.y * stretchFactor)
        
         //   imgTopConstraint.constant = imgTopConstraint.constant * stretchFactor

    }
}
