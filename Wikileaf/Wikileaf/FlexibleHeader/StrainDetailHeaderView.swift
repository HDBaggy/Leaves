//
//  StrainDetailHeaderView.swift
//  Wikileaf
//
//  Created by Harshit on 31/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import GSKStretchyHeaderView

class StrainDetailHeaderView: GSKStretchyHeaderView {

    @IBOutlet weak var lblSmallTitle: UILabel!
    @IBOutlet weak var imgStrain: UIImageView!
    @IBOutlet weak var lblStrainTitle: UILabel!
    var headerDelegate:FlexibleHeaderDelegate!
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var imgFilter: UIImageView!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        imgStrain.addBorderForImageview()
        lblSmallTitle.alpha = 0
    }
    
    // MARK: - Button Tap Events
    
    @IBAction func btnBackTapped(_ sender: Any) {
        
        headerDelegate?.headerGoBackTapped()
    }
    
    @IBAction func btnShareTapped(_ sender: Any) {
        
        headerDelegate?.headerShareTapped()
    }
    
    override func didChangeStretchFactor(_ stretchFactor: CGFloat) {
        //print("Stretched by \(stretchFactor)")
        
        imgBackground.alpha = stretchFactor
        imgFilter.alpha = stretchFactor
        
        if stretchFactor < 0.45 {
            
            imgStrain.alpha = 0
            lblStrainTitle.alpha = 0
            lblSmallTitle.alpha = 1 - lblStrainTitle.alpha

            
        } else {
            
            lblSmallTitle.alpha = 0
            lblStrainTitle.alpha = stretchFactor
            lblStrainTitle.alpha = stretchFactor
            lblStrainTitle.frame = CGRect(x: lblStrainTitle.frame.origin.x, y: lblStrainTitle.frame.origin.y  , width: lblStrainTitle.frame.size.width, height: lblStrainTitle.frame.size.height)
        }
    }
}
