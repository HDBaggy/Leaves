//
//  RatingContainerViewController.swift
//  Wikileaf
//
//  Created by Harshit on 20/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class RatingContainerViewController: UIViewController {

    var arrMenu: [String] = ["MOST RECENT","TOP RATED"]
    var options = SwipeMenuViewOptions()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initializeOnce()
    }

    func initializeOnce(){
    
        options.tabView.style = .segmented
        
        swipeMenuView.reloadData(options: options)
        
    }

    override func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewWillSetupAt currentIndex: Int) {
        print("will setup SwipeMenuView")
    }
    
    override func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewDidSetupAt currentIndex: Int) {
        print("did setup SwipeMenuView")
    }
    
    override func swipeMenuView(_ swipeMenuView: SwipeMenuView, willChangeIndexFrom fromIndex: Int, to toIndex: Int) {
        print("will change from section\(fromIndex + 1)  to section\(toIndex + 1)")
    }
    
    override func swipeMenuView(_ swipeMenuView: SwipeMenuView, didChangeIndexFrom fromIndex: Int, to toIndex: Int) {
        print("did change from section\(fromIndex + 1)  to section\(toIndex + 1)")
    }
    

    open override func numberOfPages(in swipeMenuView: SwipeMenuView) -> Int {
        return arrMenu.count
    }
    
    override func swipeMenuView(_ swipeMenuView: SwipeMenuView, titleForPageAt index: Int) -> String {
        return arrMenu[index]
    }
    
    override func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewControllerForPageAt index: Int) -> UIViewController {
        let objController = self.storyboard?.instantiateViewController(withIdentifier: "ratingListController") as! RatingListViewController
       // objController.content = arrMenu[index]
        return objController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
