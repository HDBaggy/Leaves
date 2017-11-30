//
//  DispensaryDetailViewController.swift
//  Wikileaf
//
//  Created by Harshit on 10/10/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import TTTAttributedLabel
import MXSegmentedPager
import IDMPhotoBrowser

let kDispensaryDetailHeaderHeight:CGFloat = 309.0

class DispensaryDetailViewController: MXSegmentedPagerController, TTTAttributedLabelDelegate, DispensaryDetailHeaderNewDelegate {

    var objHeaderView:DispensaryDetailHederViewNew!
    var fltHeaderHeight:CGFloat = kDispensaryDetailHeaderHeight
    var arrMenu:[ClsMenu]!
    var objCurrentDispensary:ClsDispensary!
    
    
    /*
 var objStrainListController:DispensariesStrainListViewController!
 var objEdiblesController:DispensaryEdiblesViewController!
 var objConcentratesController:DispensariesConcentratesController!
 var objPhotoGalleryController:PhotoGalleryViewController!
 var objDispensaryAboutController:TextualDetailViewController!
 var objReviewController:DispensaryReviewListViewController!
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeOnce()
    }
    
    func initializeOnce(){
        
        arrMenu = Array()
        
        initializeTopMenu()
        configureHeader()
        configureBottom()
        getData()
        trackAnalyticsScreen()
    }
    
    func trackAnalyticsScreen(){
        
//        let objGoogleTracker = GAI.sharedInstance().defaultTracker as GAITracker
//        objGoogleTracker.set(kGAIScreenName, value: kDispDetailScreen)
    }
    
    
    func initializeTopMenu() {
        
        arrMenu = Array()
        
        var objMenu = ClsMenu()
        objMenu.strMenuName = "Menu"
        objMenu.strControllerIdentifier = "DispensaryMenuController"
        arrMenu.append(objMenu)
        
        objMenu = ClsMenu()
        objMenu.strMenuName = "Reviews"
        objMenu.strControllerIdentifier = "RatingsRootViewController"
        arrMenu.append(objMenu)
        
        objMenu = ClsMenu()
        objMenu.strMenuName = "Photos"
        objMenu.strControllerIdentifier = "PhotoGalleryViewController"
        arrMenu.append(objMenu)
        
        objMenu = ClsMenu()
        objMenu.strMenuName = "Deals"
        objMenu.strControllerIdentifier = "DealsViewController"
        arrMenu.append(objMenu)
        
        objMenu = ClsMenu()
        objMenu.strMenuName = "About"
        objMenu.strControllerIdentifier = "AboutViewController"
        arrMenu.append(objMenu)
    }
    
    func configureBottom(){
        
        self.segmentedPager.segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocation.down
        self.segmentedPager.segmentedControl.backgroundColor = UIColor.white
        self.segmentedPager.segmentedControl.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.black]
        self.segmentedPager.segmentedControl.selectedTitleTextAttributes = [NSForegroundColorAttributeName:UIColor.black]
        self.segmentedPager.segmentedControl.selectionStyle = HMSegmentedControlSelectionStyle.fullWidthStripe
        self.segmentedPager.segmentedControl.selectionIndicatorHeight = 3
        self.segmentedPager.segmentedControl.titleTextAttributes = [NSForegroundColorAttributeName:UIColor(red: 66/255, green:66/255, blue: 66/255, alpha: 1.0),NSFontAttributeName: UIFont(name: "Helvetica", size: 14)]
        self.segmentedPager.segmentedControl.segmentEdgeInset = UIEdgeInsetsMake(0, 10, 0, 10)
        self.segmentedPager.segmentedControl.selectionIndicatorColor = UIColor(red: 35/255, green: 207/255, blue: 95/255, alpha: 1)
        self.segmentedPager.segmentedControlEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
       // addSeperatorLines()
    }
    
    // MARK: - MXSegmentPager DataSource
    
    override func heightForSegmentedControlInSegmentedPager(segmentedPager: MXSegmentedPager) -> CGFloat {
        return 43
    }
    
    override func numberOfPagesInSegmentedPager(segmentedPager: MXSegmentedPager) -> Int {
        return arrMenu.count
    }
    
    override func segmentedPager(segmentedPager: MXSegmentedPager, titleForSectionAtIndex index: Int) -> String {
        let objMenu = arrMenu[index]
        return objMenu.strMenuName
    }
    
    override func segmentedPager(segmentedPager: MXSegmentedPager, segueIdentifierForPageAtIndex index: Int) -> String {
        return "showSampleText"
    }
    
    override func segmentedPager(segmentedPager: MXSegmentedPager, viewControllerForPageAtIndex index: Int) -> UIViewController {
        
        let objMenu = arrMenu[index]
        
//        let objStoryboard = UIStoryboard(name: R.storyboard.dispensaries.name, bundle: nil)
        let objStoryboard = self.storyboard
        var objController:UIViewController!
        
        if index == 0 {
            
            objController = objStoryboard.instantiateViewControllerWithIdentifier(objMenu.strControllerIdentifier)
            objStrainListController = objController as! DispensariesStrainListViewController
            objStrainListController.objCurrentDispensary = objCurrentDispensary
            
            if objCurrentDispensary.arrStrainCategory != nil {
                objStrainListController.updateList(objCurrentDispensary.arrStrainCategory)
            }
            
        } else if index == 1 {
            
            objController = objStoryboard.instantiateViewControllerWithIdentifier(objMenu.strControllerIdentifier)
            objEdiblesController = objController as! DispensaryEdiblesViewController
            objEdiblesController.objCurrentDispensary = objCurrentDispensary
            
        } else if index == 2 {
            
            objController = objStoryboard.instantiateViewControllerWithIdentifier(objMenu.strControllerIdentifier)
            objConcentratesController = objController as! DispensariesConcentratesController
            objConcentratesController.objCurrentDispensary = objCurrentDispensary
            
        } else if index == 3 {
            
            let objReviewStoryBoard = UIStoryboard(name: R.storyboard.reviewList.name, bundle: nil)
            objController = objReviewStoryBoard.instantiateViewControllerWithIdentifier(R.storyboard.reviewList.dispensaryReviewListViewController.identifier) as! DispensaryReviewListViewController
            objReviewController = objController as! DispensaryReviewListViewController
            objReviewController.objCurrentDispensary = objCurrentDispensary
            
        } else if index == 4 {
            
            objController = objStoryboard.instantiateViewControllerWithIdentifier(objMenu.strControllerIdentifier)
            objPhotoGalleryController = objController as! PhotoGalleryViewController
            objPhotoGalleryController.objCurrentDispensary = objCurrentDispensary
            
        } else if index == 5 {
            
            objController = objStoryboard.instantiateViewControllerWithIdentifier(objMenu.strControllerIdentifier)
            objDispensaryAboutController = objController as! TextualDetailViewController
            
            if objCurrentDispensary.strOverview != nil {
                
                objDispensaryAboutController.strDescription = objCurrentDispensary.strOverview.html2String
            }
        }
        return objController
    }
    
    
    func getData(){

        /*
        let objManager = WLManager.sharedInstance()
        
        Helper.showLoading()

        objManager.getDispensaryFullDetails(objCurrentDispensary) { (result, success) in
            
            if success == true {
                
                if self.objCurrentDispensary.arrStrainCategory != nil {
                    self.objStrainListController?.updateList(self.objCurrentDispensary.arrStrainCategory)
                }
                
                self.objEdiblesController?.updateList(self.objCurrentDispensary.arrEdibles)
                self.objConcentratesController?.updateList(self.objCurrentDispensary.arrConcentrates)
                self.objPhotoGalleryController?.updateList(self.objCurrentDispensary.arrPhotos)
                
                let strTmpReview = "\(self.objCurrentDispensary.fltAverageReview)"
                self.objHeaderView.configureReviewView(self.objCurrentDispensary.intTotalReviews, pstrAverageReview: strTmpReview)
                self.objHeaderView.configureHeader()
                self.objHeaderView.lblAddress.text = self.objCurrentDispensary.strFullAddress
                self.objHeaderView.lblDetail1.text = self.objCurrentDispensary.getStoreTypeText()
                self.objHeaderView.lblDetail1.textColor = self.objCurrentDispensary.objColor
                self.objReviewController?.updateList(self.objCurrentDispensary.arrReviews)
                
                let strTmpStatusPrefix = (self.objCurrentDispensary.isOpen == true) ?  "Open Now - " : "Closed Now - "
                self.objHeaderView.lblTiming.text = strTmpStatusPrefix + self.objCurrentDispensary.strStartTime + " to " + self.objCurrentDispensary.strEndTime
            }
            
            Helper.hideLoading()
        } */
    }
    
    func configureHeader(){
        
        objHeaderView = Bundle.main.loadNibNamed("DispensaryDetailHederViewNew", owner: self, options: nil)![0] as! DispensaryDetailHederViewNew
        

        
        self.segmentedPager.parallaxHeader.view = objHeaderView
        self.segmentedPager.parallaxHeader.mode = .top
        self.segmentedPager.parallaxHeader.height = fltHeaderHeight
        self.segmentedPager.parallaxHeader.minimumHeight = 70
        objHeaderView.dispensaryHeaderDelegate = self
//        objHeaderView.objCurrentDispensary = objCurrentDispensary
    }

    // MARK: - Dispensary detail header view delegate
    
    func goBack() {
        
    }
    
    func shareDispensary(pobjDispensary: ClsDispensary) {
        
    }
    
    func callDispensary(pobjDispensary: ClsDispensary) {
        
    }
    
    func findNearByDispensary(pobjDispensary: ClsDispensary) {
        
    }
    
    func writeReviewForDispensary(pobjDispensary: ClsDispensary) {
        
    }
    
    func switchToReviewTab() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
