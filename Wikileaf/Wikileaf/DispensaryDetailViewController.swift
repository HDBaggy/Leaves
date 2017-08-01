//
//  DispensaryDetailViewController.swift
//  Wikileaf
//
//  Created by Harshit on 29/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import GSKStretchyHeaderView

class DispensaryDetailViewController: UIViewController {
   
    @IBOutlet weak var tblDetails: UITableView!
    var arrDetails:[AnyObject]!
    var objTableHeaderView:GSKStretchyHeaderView!
    
    var ids = ["DispsnearyDetailAttributeCell","DispensaryDetailTitleCell","DispensaryDeatilReviewCell","DispensaryDetailOfferCell","DispensaryDetailDescriptionCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeOnce()
        // Do any additional setup after loading the view.
    }

    func initializeOnce(){
    
        tblDetails.rowHeight = UITableViewAutomaticDimension
        tblDetails.estimatedRowHeight = 60
        tblDetails.bounces = false
        
        arrDetails = Array()
        
        var objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeName = "TYPE"
        objAttribute.strAttributeValue = "Recretional Dispensary"
        objAttribute.attributeType = .Detail
        arrDetails.append(objAttribute)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeName = "CALL"
        objAttribute.strAttributeValue = "+41 31 961 99 00"
        objAttribute.strImageName = "ic_call_black_24px"
        objAttribute.attributeType = .Detail
        arrDetails.append(objAttribute)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeName = "ADDRESS"
        objAttribute.strAttributeValue = "9509 Rainier Ave S,\nSeattle,\nWA 98118"
        objAttribute.strImageName = "Go Button"
        objAttribute.attributeType = .Detail
        arrDetails.append(objAttribute)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeTitle = "HOURS"
        objAttribute.strOperation = "Show All"
        objAttribute.attributeType = .Operation
        arrDetails.append(objAttribute)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeName = "REVIEWS"
        objAttribute.strOperation = "Write a Review"
        objAttribute.attributeType = .Operation
        arrDetails.append(objAttribute)
        
        var objReview = ClsReview()
        objReview.strReviewerName = "John Doe"
        objReview.strReviewTime = "36 months ago"
        objReview.fltReview = 4.0
        objReview.strReviewDetail = "I have to say, one of the best I have had! Turly tasty to smoke, and guaranteed to get you wherver you want to be. Ha Ha"
        arrDetails.append(objReview)
        
        objReview = ClsReview()
        objReview.strReviewerName = "John Doe"
        objReview.strReviewTime = "36 months ago"
        objReview.fltReview = 4.0
        objReview.strReviewDetail = "I have to say, one of the best I have had! Turly tasty to smoke, and guaranteed to get you wherver you want to be. Ha Ha"
        arrDetails.append(objReview)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeTitle = "38 Reviews"
        objAttribute.strOperation = "All Reviews"
        objAttribute.attributeType = .Operation
        arrDetails.append(objAttribute)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeTitle = "TODAY'S DEAL"
        objAttribute.strOperation = "All Details"
        objAttribute.attributeType = .Operation
        arrDetails.append(objAttribute)
        
        let objOffer = ClsOffer()
        objOffer.strOffer = "Get 20% off on all Indica strains and 5% off on all products from Seattle Private Reverse"
        objOffer.strIcon = "Go Button Copy"
        arrDetails.append(objOffer)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeTitle = "ABOUT"
        objAttribute.strOperation = "Read More"
        arrDetails.append(objAttribute)
        
        let objDispensaryAbout = ClsAbout()
        objDispensaryAbout.strAboutDetail = "Las Vegas has more than 100,000 hotel rooms to choose from. There is something for every budget and enough entertainment within walking distance to keep anyone occupied for months, never mind the usual weekend stay or honeymoon. There are few cities which have as many luxury hotels as Las Vegas."
        arrDetails.append(objAttribute)
        
        tblDetails.reloadData()

        loadHeader()
        
        tblDetails.contentSize = CGSize(width: 0, height: 1000)
        tblDetails.bounces = true
        
    }
    
    func loadHeader(){
    
        objTableHeaderView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! GSKStretchyHeaderView
        tblDetails.addSubview(objTableHeaderView)
        
        objTableHeaderView.expansionMode = .immediate
        objTableHeaderView.minimumContentHeight = 64
        objTableHeaderView.maximumContentHeight = 350
        objTableHeaderView.contentShrinks = true
        objTableHeaderView.contentExpands = false
        objTableHeaderView.contentAnchor = .top
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension DispensaryDetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let objDetail = arrDetails[indexPath.row]
        
        if objDetail.isKind(of: ClsDispensaryDetailAttribute.self) == true {
        
            
        } else if objDetail.isKind(of: ClsDispensaryDetailAttribute.self) == true {
        
        } else if objDetail.isKind(of: ClsDispensaryDetailAttribute.self) == true {
            
        }
        
        
        
        /*
        let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailCell", for: indexPath) as! DrawerDetailCell
        let objDetail = arrDetails[indexPath.row]
        objCell.lblDetail.text = objDetail.strAttributeName
        objCell.imgDetailIcon.image = UIImage(named: objDetail.strImageName)
        */
        return objCell
    }
}

