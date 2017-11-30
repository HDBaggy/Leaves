//
//  FlexibleHeaderView.swift
//  Wikileaf
//
//  Created by Harshit on 30/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import GSKStretchyHeaderView

protocol FlexibleHeaderDelegate {
    
    func headerGoBackTapped()
    func headerShareTapped()
}

protocol DispensaryDetailHeaderDelegate {
    
    func goBack()
    func shareDispensary(pobjDispensary:ClsDispensary)
    func callDispensary(pobjDispensary:ClsDispensary)
    func findNearByDispensary(pobjDispensary:ClsDispensary)
    func writeReviewForDispensary(pobjDispensary:ClsDispensary)
    func switchToReviewTab()
}

class DispensaryDetailHeaderView: GSKStretchyHeaderView {

    @IBOutlet weak var lblSmallTitle: UILabel!
    @IBOutlet weak var imgDispensary: UIImageView!
    @IBOutlet weak var lblDispensaryTitle: UILabel!
    var headerDelegate:FlexibleHeaderDelegate!
    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var imgFilter: UIImageView!
    var dispensaryHeaderDelegate:DispensaryDetailHeaderDelegate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        imgDispensary.addBorderForImageview()
        lblSmallTitle.alpha = 0
    }
    
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
        
            imgDispensary.alpha = 0
            lblDispensaryTitle.alpha = 0
            lblSmallTitle.alpha = 1 - lblDispensaryTitle.alpha

        } else {
        
            lblSmallTitle.alpha = 0
            imgDispensary.alpha = stretchFactor
            lblDispensaryTitle.alpha = stretchFactor
            lblDispensaryTitle.frame = CGRect(x: lblDispensaryTitle.frame.origin.x, y: lblDispensaryTitle.frame.origin.y  , width: lblDispensaryTitle.frame.size.width, height: lblDispensaryTitle.frame.size.height)
        }
    }
}
