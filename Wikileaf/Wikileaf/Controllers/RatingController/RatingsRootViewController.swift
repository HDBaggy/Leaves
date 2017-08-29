//
//  RatingsRootViewController.swift
//  Wikileaf
//
//  Created by Harshit on 21/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit


class RatingsRootViewController:UIViewController {

    var arrMenu:[String] = ["MOST RECENT","TOP RATED"]
    var objRatingController:RatingListViewController!

    @IBOutlet weak var btnRecent: UIButton!
    @IBOutlet weak var btnTopRated: UIButton!
    
    @IBOutlet weak var objRecentActiveConstraint: NSLayoutConstraint!
    @IBOutlet weak var objTopRatedConstraint: NSLayoutConstraint!
    @IBOutlet weak var objListSwitchBar: UIView!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        initializeOnce()
    }

    func initializeOnce(){
    
        //objListSwitchBar.addShadow()
    }
    
    @IBAction func btnTopRatedTapped(_ sender: Any) {
        btnTopRated.alpha = 1.0
        btnRecent.alpha = 0.7
        
        UIView.animate(withDuration: 0.5) {
            
            self.objTopRatedConstraint.isActive = true
            self.objRecentActiveConstraint.isActive = false
            
            self.view.layoutIfNeeded()
        }   
    }

    @IBAction func btnRecentTapped(_ sender: Any) {
        btnTopRated.alpha = 0.7
        btnRecent.alpha = 1.0
        
        UIView.animate(withDuration: 0.5) {
            
            self.objTopRatedConstraint.isActive = false
            self.objRecentActiveConstraint.isActive = true
            
            self.view.layoutIfNeeded()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showRecentList" {
        
            self.objRatingController = segue.destination as! RatingListViewController
        }
    }
    
    @IBAction func btnBackTapped(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

