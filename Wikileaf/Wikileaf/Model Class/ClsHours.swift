//
//  ClsHours.swift
//  Wikileaf
//
//  Created by Harshit on 02/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

enum CellStatus {
    case Expanded
    case Collasped
}

class ClsHours: NSObject {

    var strBriefDetail:String!
    var cellCurrentStatus:CellStatus = .Collasped
}
