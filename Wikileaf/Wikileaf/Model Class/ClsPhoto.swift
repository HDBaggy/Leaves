//
//  ClsPhoto.swift
//  WikiLeafs
//

import UIKit

/// Photos of dispensary
class ClsPhoto: NSObject {

    var strImageUrl:String!
    var intImageId:Int = 0
    
    override init(){
        super.init()
    }
    
    init(pdictJson: [String:AnyObject]) {
        
        super.init()        
        strImageUrl = pdictJson["image"] as! String
    }
}
