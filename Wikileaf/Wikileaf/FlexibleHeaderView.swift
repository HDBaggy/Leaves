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

    override func didChangeStretchFactor(_ stretchFactor: CGFloat) {
        print("Stretched by \(stretchFactor)")
    }
}
