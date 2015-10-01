//
//  AutoLayoutExampleViewController.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 9/2/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class AutoLayoutExampleViewController: UIViewController {
    
    @IBOutlet weak var rightViewConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftRightGapConstraint: NSLayoutConstraint!
    
    var hasSlideYet = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func slideToggle(sender: UIButton) {
        hasSlideYet = !hasSlideYet
        UIView.animateWithDuration(1.0, animations: {
            self.updateConstraints()
            self.view.layoutIfNeeded()
        })
    }
    
    func updateConstraints() {
        if(hasSlideYet) {
            // slide it off
            leftRightGapConstraint.constant = 20.0
            rightViewConstraint.priority = UILayoutPriorityDefaultHigh - 1
        } else {
            // slide it back
            leftRightGapConstraint.constant = NSLayoutConstraint.standardConstantBetweenSiblings()
            rightViewConstraint.priority = UILayoutPriorityDefaultHigh + 1
        }
    }
}

















extension NSLayoutConstraint {
    class func standardConstantBetweenSiblings() -> CGFloat {
        let view = UIView()
        let constraintWithStandardConstantBetweenSiblings = NSLayoutConstraint.constraintsWithVisualFormat("[view]-[view]",
            options: NSLayoutFormatOptions.DirectionLeadingToTrailing,
            metrics: nil,
            views: ["view" : view])
        return constraintWithStandardConstantBetweenSiblings[0].constant ;    // 8.0
    }
    
    class func standardConstantBetweenSuperview() -> CGFloat {
        let view = UIView()
        let superview = UIView()
        superview.addSubview(view)
        let constraintWithStandardConstantBetweenSuperview = NSLayoutConstraint.constraintsWithVisualFormat("|-[view]",
            options: NSLayoutFormatOptions.DirectionLeadingToTrailing,
            metrics: nil,
            views: ["view" : view])
        return constraintWithStandardConstantBetweenSuperview[0].constant ;    // 20.0
    }
}