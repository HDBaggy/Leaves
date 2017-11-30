//
//  DispensaryDetailHeaderViewNew.swift
//  Wikileaf
//
//  Created by Harshit on 10/10/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import TTTAttributedLabel
import MXParallaxHeader
import TimeZoneLocate

protocol DispensaryDetailHeaderNewDelegate {
    
    func goBack()
    func shareDispensary(pobjDispensary:ClsDispensary)
    func callDispensary(pobjDispensary:ClsDispensary)
    func findNearByDispensary(pobjDispensary:ClsDispensary)
    func writeReviewForDispensary(pobjDispensary:ClsDispensary)
    func switchToReviewTab()
}

class DispensaryDetailHederViewNew: UIView {

    var fltTopBarOriginalHeight:CGFloat = kDispensaryDetailHeaderHeight
    var fltTitleLabelOriginalHeight:CGFloat!
    var dispensaryHeaderDelegate:DispensaryDetailHeaderNewDelegate!
    weak var objCurrentDispensary:ClsDispensary!

    /// Initiailzations
    func initializeDesign(){
    
    }
    
    func configureHeader(){

    }

    func parallaxHeaderDidScroll(_ parallaxHeader: MXParallaxHeader) {
        
//        lblTitle.alpha = 1 + (2 * parallaxHeader.progress)
//        lblSmallTitle.alpha = 0.4 - lblTitle.alpha
//        lblSmallTitle.font = FontTheme.HeaderSmallTitleFont().font
    }
}
