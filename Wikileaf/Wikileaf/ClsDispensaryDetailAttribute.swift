//
//  ClsDispensaryDetailAttribute.swift
//  Wikileaf
//
//  Created by Harshit on 01/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

enum AttributeType {
    case Detail
    case Operation
}

class ClsDispensaryDetailAttribute: NSObject {

    var strAttributeTitle:String!
    var strOperation:String!
    var strAttributeName:String!
    var strImageName:String!
    var strAttributeValue:String!
    var attributeType:AttributeType = .Detail
    
}
