//
//  DispensaryMenuHeaderView.swift
//  Wikileaf
//
//  Created by Harshit on 09/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

typealias SectionBlock = () -> Void

class DispensaryMenuHeaderView: UIView {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnUnit: UIButton!
    var objSectionBlock:SectionBlock!
    
    @IBAction func btnUnitTapped(_ sender: Any) {

        if objSectionBlock != nil {
            objSectionBlock()
        }
    }
}
