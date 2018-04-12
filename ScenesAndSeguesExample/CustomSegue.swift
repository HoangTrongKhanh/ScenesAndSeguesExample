//
//  CustomSegue.swift
//  ScenesAndSeguesExample
//
//  Created by Hoàng Khánh on 4/12/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    override func perform() {
        let firstView = self.source.view as UIView!
        let secondView = self.destination.view as UIView!
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        firstView!.frame = CGRect(x: firstView!.frame.origin.x, y: firstView!.frame.origin.y, width: screenWidth, height: screenHeight)
        secondView!.frame = CGRect(x: secondView!.frame.origin.x, y: secondView!.frame.origin.y, width: 0, height: 0)
        
        firstView!.center = CGPoint(x: screenWidth/2, y: screenHeight/2)
        secondView!.center = CGPoint(x: screenWidth/2, y: screenHeight/2)
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(secondView!, aboveSubview: firstView!)
        UIView.animate(withDuration: 0.5, animations: {
            firstView!.frame = CGRect(x: firstView!.frame.origin.x, y: firstView!.frame.origin.y, width: 0, height: 0)
            secondView!.frame = CGRect(x: secondView!.frame.origin.x, y: secondView!.frame.origin.y, width: screenWidth, height: screenHeight)
            firstView!.center = CGPoint(x: screenWidth/2, y: screenHeight/2)
            secondView!.center = CGPoint(x: screenWidth/2, y: screenHeight/2)
        }) {(finished) in
            self.source.present(self.destination, animated: false, completion: nil)
        }
        
    }
}
