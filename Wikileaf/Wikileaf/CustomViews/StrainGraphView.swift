//
//  StrainGraphView.swift
//  Wikileaf
//
//  Created by Harshit on 31/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class StrainGraphView: UIView {
    
    @IBOutlet weak var lblGraphName: UILabel!
    @IBOutlet weak var blueBar: UIView!
    @IBOutlet weak var greenBar: UIView!
    var fltMaximumHeight:CGFloat = 160.0
    var fltMaximumValue:CGFloat = 40.0
    
    @IBOutlet weak var greenBarHeight:NSLayoutConstraint!
    @IBOutlet weak var blueBarHeight:NSLayoutConstraint!
    
    func configurBlueBar(pfltAmount:CGFloat){
        
        let fltFinalAmount = pfltAmount*100/fltMaximumValue
        let fltFinalHeight = fltFinalAmount * fltMaximumHeight / 100
        blueBarHeight?.constant = fltFinalHeight
        self.layoutIfNeeded()
    }
    
    func configurGreenBar(pfltAmount:CGFloat){
        
        let fltFinalAmount = pfltAmount*100/fltMaximumValue
        let fltFinalHeight = fltFinalAmount * fltMaximumHeight / 100
        greenBarHeight?.constant = fltFinalHeight
        self.layoutIfNeeded()
    }
}
