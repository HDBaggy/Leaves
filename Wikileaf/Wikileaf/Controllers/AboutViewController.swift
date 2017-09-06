//
//  AboutViewController.swift
//  Wikileaf
//
//  Created by Harshit on 25/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var objNavigationBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //objNavigationBar.addShadow()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBackTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
