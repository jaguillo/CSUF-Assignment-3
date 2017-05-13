//
//  GraphView.swift
//  MVCExample
//
//  Created by CampusUser on 3/6/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

extension CGContext{
    func setFillColor(_ hex:Int){
        // Mask different values of the hex code
        // 0xFF00000 - Red
        // 0x00FF00 - Green
        // 0x0000FF - Blue   (RGB)
        
        let redColor: CGFloat = CGFloat((hex>>16) & 0xFF) / 255.0
        let greenColor: CGFloat = CGFloat((hex>>8) & 0xFF) / 255.0
        let blueColor: CGFloat = CGFloat((hex) & 0xFF) / 255.0
    
        setFillColor(red:redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
}

class GraphView: UIView {

    //let CalcData: DiscountCalc = DiscounCalc.shared
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        let context:CGContext = UIGraphicsGetCurrentContext()!
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let leftguide:CGFloat = 16.0
        let rightGuide:CGFloat = screenWidth - 16.0
        let topGuide:CGFloat = 64.0 + 16.0 //80.0
        let botGuide:CGFloat = screenHeight - 16.0
        
        
        //Draw Rectangle
        
        context.setFillColor(0x84516D) //this uses the function in the extension at the top
        
        //context.setFillColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        context.fill(CGRect(x:leftguide, y:topGuide, width:screenWidth - 32.0, height:screenHeight - 96.0))
        
        // Draw Text
        let myText = "Original Price"
        let subText = "place holder"
        
        // Text Attributes
        let textAttributes = [
            NSFontAttributeName: UIFont(name: "Helvetica Bold", size: 16.0)!,
            NSForegroundColorAttributeName: UIColor(red:1.0, green: 1.0, blue:1.0, alpha:1.0)
        ]
        
        let myTextPos:CGPoint = CGPoint(x: leftguide + 16.0, y: topGuide + 16.0)
        let myOtherTextPos:CGPoint = CGPoint(x: rightGuide - screenWidth/3, y: topGuide + 16.0)
        
        myText.draw(at: myTextPos, withAttributes: textAttributes)
            subText.draw(at: CGPoint(x: leftguide + 16.0, y: topGuide + 32.0), withAttributes: textAttributes)
        
        let secondText = "You Saved"
        let secondSubText = "Place Holder"
        
        secondText.draw(at: myOtherTextPos, withAttributes: textAttributes)
        secondSubText.draw(at: CGPoint(x: rightGuide - screenWidth/3, y: topGuide + 32.0), withAttributes: textAttributes)
        
    }
 
    
    

}
