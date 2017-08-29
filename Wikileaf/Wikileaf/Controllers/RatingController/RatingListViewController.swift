//
//  RatingListViewController.swift
//  Wikileaf
//
//  Created by Harshit on 20/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class RatingListViewController: UIViewController {
    
    @IBOutlet weak var tblReviews: UITableView!
    var arrReviews:[ClsReview]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeOnce()
        tblReviews.reloadData()
        // Do any additional setup after loading the view.
    }
    
    func initializeOnce(){
        
        tblReviews.rowHeight = UITableViewAutomaticDimension
        tblReviews.estimatedRowHeight = 60
        
        arrReviews = Array()
        
        var objReview = ClsReview()
        objReview.strReviewerName = "John Doe"
        objReview.strReviewTime = "36 months ago"
        objReview.fltReview = 4.0
        objReview.strReviewDetail = "I have to say, one of the best I have had! Turly tasty to smoke, and guaranteed to get you wherver you want to be. Ha Ha"
        arrReviews.append(objReview)
        
        objReview = ClsReview()
        objReview.strReviewerName = "John Doe"
        objReview.strReviewTime = "36 months ago"
        objReview.fltReview = 4.0
        objReview.strReviewDetail = "I have to say, one of the best I have had! Turly tasty to smoke, and guaranteed to get you wherver you want to be. Ha Ha"
        arrReviews.append(objReview)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension RatingListViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return arrReviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let objRating = arrReviews[indexPath.row]
        let objCell = tableView.dequeueReusableCell(withIdentifier: "RatingListReviewCell", for: indexPath) as! DetailReviewCell
        objCell.configureCell(pobjRating: objRating)
        return objCell
    }
    
}

extension RatingListViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected")
    }
    
}
