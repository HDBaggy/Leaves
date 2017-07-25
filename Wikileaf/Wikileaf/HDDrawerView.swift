//
//  HDDrawerView.swift
//  Wikileaf
//
//  Created by Harshit on 23/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class HDDrawerView: UIView, UIGestureRecognizerDelegate {

    var arrSupportedVerticalGaps:[CGFloat]!
    var fltAdjustableOffset:CGFloat = 30
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initializeOnce()
    }
   
    func addStep(pfltStep:CGFloat){
    
        if arrSupportedVerticalGaps == nil {
            arrSupportedVerticalGaps = Array()
        }
        
        arrSupportedVerticalGaps.append(pfltStep)
    }
    
    func addSteps(parrSteps:[CGFloat]){
    
        arrSupportedVerticalGaps = parrSteps
    }
    
    func initializeOnce(){

        if arrSupportedVerticalGaps == nil {
            arrSupportedVerticalGaps = Array()
        }
        
        let objPanGesture = UIPanGestureRecognizer(target: self, action: #selector(HDDrawerView.drawerPangestureReceived(objPangesture:)))
        objPanGesture.maximumNumberOfTouches = 1
        objPanGesture.minimumNumberOfTouches = 1
        objPanGesture.delegate = self
        self.addGestureRecognizer(objPanGesture)
    }
    
    internal func drawerPangestureReceived(objPangesture:UIPanGestureRecognizer) {
        
        switch objPangesture.state {
            
        case .began, .changed:
            let objPoint = objPangesture.translation(in: objPangesture.view)
            objPangesture.view?.center = CGPoint(x: (objPangesture.view?.center.x)!, y: (objPangesture.view?.center.y)! + objPoint.y)
            objPangesture.setTranslation(CGPoint(x: 0, y: 0), in: objPangesture.view)
            break
            
        case .ended:
            
            let objDirection = objPangesture.velocity(in: objPangesture.view?.superview)
 
            let fltCurrentGap = (objPangesture.view?.superview?.frame.size.height)! - (objPangesture.view?.frame.origin.y)!
            var finalGap = fltCurrentGap
            
            for fltGap in self.arrSupportedVerticalGaps {
                
                if objDirection.y > 0 {
                    
 //                   print("Is current gap \(fltCurrentGap) larger than \(fltGap) ?")
                    if fltCurrentGap + 30 > fltGap {
//                        print("Yes")
                        finalGap = fltGap
//                        print("So Setting to that position")
                    } else {
//                        print("No")
                    }
                    
                } else {
                    
//                    print("Is current gap \(fltCurrentGap) smaller than \(fltGap) ?")
                    if fltGap + 30 > fltCurrentGap {
//                        print("Yes")
                        finalGap = fltGap
//                        print("So Setting to that position")
                        break
                    } else {
//                        print("No")
                    }
                }
            }
            
            UIView.animate(withDuration: 0.4, animations: {
                self.setVerticalGap(pfltGap: finalGap)
            })
            
            break
            
        default:
            break
        }
    }
    
    func setVerticalGap(pfltGap:CGFloat){
    
            self.frame = CGRect(x: self.frame.origin.x, y: (self.superview?.frame.height)! - pfltGap, width: (self.superview?.frame.size.width)!, height: (self.superview?.frame.height)!)
    }
}
