//
//  ViewController.swift
//  Wikileaf
//
//  Created by Harshit on 22/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var objContainerView: HDDrawerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeOnce()
    }

    func initializeOnce(){
    
        addDrawer()
    }
    
    func addDrawer(){
        
        objContainerView.frame = CGRect(x: 0, y: self.view.frame.size.height - 30, width: self.view.frame.size.width, height: self.view.frame.size.height)
        objContainerView.addSteps(parrSteps: [0, self.view.frame.size.height - 166, self.view.frame.size.height - 64.0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

