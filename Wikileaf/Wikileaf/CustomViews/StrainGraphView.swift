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
    var fltMaximumHeight:CGFloat = 110.0
    
    func configurBlueBar(pfltAmount:CGFloat){
    
       let fltFinalHeight = pfltAmount * fltMaximumHeight / 100
        blueBar.frame = CGRect(x: blueBar.frame.origin.x, y: blueBar.frame.origin.y, width: blueBar.frame.size.width, height: fltFinalHeight)
    }
    
    func configurGreenBar(pfltAmount:CGFloat){
        
        let fltFinalHeight = pfltAmount * fltMaximumHeight / 100
        greenBar.frame = CGRect(x: greenBar.frame.origin.x, y: greenBar.frame.origin.y, width: greenBar.frame.size.width, height: fltFinalHeight)
    }
}
