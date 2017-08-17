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
    var objTableHeaderView:FlexibleHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeOnce()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        objTableHeaderView.minimumContentHeight = 64
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
        objAttribute.strOperation = "SHOW ALL"
        objAttribute.attributeType = .Operation
        arrDetails.append(objAttribute)
        
        let objHours = ClsHours()
        objHours.strBriefDetail = "Open Now until 9:00 PM"
        arrDetails.append(objHours)
        
        let objPhotoDetail = ClsPhotoDetails()
        objPhotoDetail.arrPhotoNames = Array()
        objPhotoDetail.arrPhotoNames.append("sample_image_1")
        objPhotoDetail.arrPhotoNames.append("sample_image_2")
        objPhotoDetail.arrPhotoNames.append("sample_image_3")
        arrDetails.append(objPhotoDetail)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeTitle = "REVIEWS"
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
        objOffer.strIcon = "Share button"
        arrDetails.append(objOffer)
        
        objAttribute = ClsDispensaryDetailAttribute()
        objAttribute.strAttributeTitle = "ABOUT"
        objAttribute.strOperation = "Read More"
        objAttribute.attributeType = .Operation
        arrDetails.append(objAttribute)
        
        let objDispensaryAbout = ClsAbout()
        objDispensaryAbout.strAboutDetail = "Las Vegas has more than 100,000 hotel rooms to choose from. There is something for every budget and enough entertainment within walking distance to keep anyone occupied for months, never mind the usual weekend stay or honeymoon. There are few cities which have as many luxury hotels as Las Vegas."
        arrDetails.append(objDispensaryAbout)
        
        tblDetails.reloadData()
        
        loadHeader()
        
        tblDetails.contentSize = CGSize(width: 0, height: 1000)
        tblDetails.bounces = true
        
    }
    
    func loadHeader(){
        
        objTableHeaderView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! FlexibleHeaderView
        tblDetails.addSubview(objTableHeaderView)
        
        objTableHeaderView.expansionMode = .topOnly
        objTableHeaderView.minimumContentHeight = 64
        objTableHeaderView.maximumContentHeight = 350
//        objTableHeaderView.minimumContentHeight = 64
        objTableHeaderView.contentShrinks = true
        objTableHeaderView.contentExpands = true
        objTableHeaderView.contentAnchor = .top
        objTableHeaderView.setMaximumContentHeight(350, resetAnimated: false)
        objTableHeaderView.headerDelegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension DispensaryDetailViewController: FlexibleHeaderDelegate {

    func headerShareTapped() {
        
    }
    
    func headerGoBackTapped() {
        
        self.navigationController?.popViewController(animated: true)
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
        
        let objTmpDetail = arrDetails[indexPath.row]
        
        if objTmpDetail.isKind(of: ClsDispensaryDetailAttribute.self) == true {
            
            let objDetail = objTmpDetail as! ClsDispensaryDetailAttribute
            
            if objDetail.attributeType == .Detail {
                
                let objCell = tableView.dequeueReusableCell(withIdentifier: "DispsnearyDetailAttributeCell", for: indexPath) as! DetailAttributeCell
                objCell.lblAttributeName?.text = objDetail.strAttributeName
                objCell.lblAttributeValue?.text = objDetail.strAttributeValue
                objCell.imgAttributeIcon.image = UIImage(named: objDetail.strImageName)
                return objCell
            }
            
            if objDetail.attributeType == .Operation {
                
                let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailTitleCell", for: indexPath) as! DetailTitleCell
                objCell.lblTitleName.text = objDetail.strAttributeTitle
                objCell.lblOperationName.text = objDetail.strOperation
                return objCell
            }
            
        } else if objTmpDetail.isKind(of: ClsOffer.self) == true {
            
            let objDetail = objTmpDetail as! ClsOffer
            let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailOfferCell", for: indexPath) as! DetailOfferCell
            objCell.lblOfferDetail.text = objDetail.strOffer
            objCell.imgOfferIcon.image = UIImage(named: objDetail.strIcon)
            return objCell
            
        } else if objTmpDetail.isKind(of: ClsReview.self) == true {
            
            let objDetail = objTmpDetail as! ClsReview
            let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDeatilReviewCell", for: indexPath) as! DetailReviewCell
            objCell.lblReviewerDetail.text = "John Doe - 37 months ago"
            objCell.lblReview.text = objDetail.strReviewDetail
            return objCell
            
        } else if objTmpDetail.isKind(of: ClsAbout.self) == true {
            
            let objDetail = objTmpDetail as! ClsAbout
            let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailDescriptionCell", for: indexPath) as! DetailDescriptionCell
            objCell.lblDescription.text = objDetail.strAboutDetail
            return objCell
        } else if objTmpDetail.isKind(of: ClsHours.self) == true {
            
            let objDetail = objTmpDetail as! ClsHours
            let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailHoursDescriptionCell", for: indexPath) as! DetailDescriptionCell
            objCell.lblDescription.text = objDetail.strBriefDetail
            return objCell
        } else if objTmpDetail.isKind(of: ClsPhotoDetails.self) == true {
        
            let objDetail = objTmpDetail as! ClsPhotoDetails
            let objCell = tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailPhotoCell", for: indexPath) as! DispensaryDetailPhotoCell
//            objCell.lblDescription.text = objDetail.strBriefDetail
            objCell.img1.image = UIImage(named: objDetail.arrPhotoNames[0])
            objCell.img2.image = UIImage(named: objDetail.arrPhotoNames[1])
            objCell.img3.image = UIImage(named: objDetail.arrPhotoNames[2])
            
            objCell.img1.layer.masksToBounds = true
            objCell.img1.layer.cornerRadius = 3
            
            objCell.img2.layer.masksToBounds = true
            objCell.img2.layer.cornerRadius = 3
            
            objCell.img3.layer.masksToBounds = true
            objCell.img3.layer.cornerRadius = 3
            
            return objCell
        }
        
        return tableView.dequeueReusableCell(withIdentifier: "DispensaryDetailTitleCell", for: indexPath) as! DetailTitleCell
    }
}

extension DispensaryDetailViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return max(60, UITableViewAutomaticDimension)
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.reloadRows(at: [indexPath], with: .fade)
        self.performSegue(withIdentifier: "showMenu", sender: nil)
    }
}

