//
//  ClsMenu.swift
//  Wikileaf
//
//  Created by Harshit on 10/10/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

enum MenuType {
    
    case Switch
    case Location
    case None
}

/// Used in side bar's table rows
class ClsMenu: NSObject {
    
    var strMenuName:String!
    var objSelector:Selector!
    var menuType:MenuType = .None
    var isSelected:Bool = false
    var strControllerIdentifier:String!
}

