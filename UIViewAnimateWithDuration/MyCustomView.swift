//
//  MyCustomView.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/29/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView {

    // This is here to force auto layout to work
    override func intrinsicContentSize() -> CGSize {
        return CGSizeMake(200, 200)
    }
    
    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    @IBInspectable var plusColor: UIColor = UIColor.whiteColor()

    // See the following link for a full example
    // http://www.raywenderlich.com/90690/modern-core-graphics-with-swift-part-1
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        fillColor.setFill()
        path.fill()
        
        //set up the width and height variables
        //for the horizontal stroke
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        //create the path
        let plusPath = UIBezierPath()
        
        //set the path's line width to the height of the stroke
        plusPath.lineWidth = 5.0
        
        //move the initial point of the path
        //to the start of the horizontal stroke
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2 - plusWidth/2,
            y:bounds.height/2))
        
        //add a point to the path at the end of the stroke
        plusPath.addLineToPoint(CGPoint(
            x:bounds.width/2 + plusWidth/2,
            y:bounds.height/2))
        
        //move to the start of the vertical stroke
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2,
            y:bounds.height/2 - plusWidth/2))
        
        //add the end point to the vertical stroke
        plusPath.addLineToPoint(CGPoint(
            x:bounds.width/2,
            y:bounds.height/2 + plusWidth/2))

        
        //set the stroke color
        plusColor.setStroke()
        
        //draw the stroke
        plusPath.stroke()
    }


}
