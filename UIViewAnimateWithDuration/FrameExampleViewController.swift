//
//  FrameExampleViewController.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/29/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class FrameExampleViewController: UIViewController {
    let STEP = CGFloat(50.0)
    let NO_STEP = CGFloat(0.0)

    @IBOutlet weak var turtleView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func moveTurtleDx(dx: CGFloat, dy: CGFloat) {
        let currentFrame = self.turtleView.frame
        let newFrame = CGRectOffset(currentFrame, dx, dy)
        self.turtleView.frame = newFrame
    }

    @IBAction func moveUp(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.moveTurtleDx(self.NO_STEP, dy:-self.STEP)
        })
    }

    @IBAction func moveLeft(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.moveTurtleDx(-self.STEP, dy: self.NO_STEP)
        })
    }

    @IBAction func moveRight(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.moveTurtleDx(self.STEP, dy: self.NO_STEP)
        })
    }

    @IBAction func moveDown(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.moveTurtleDx(self.NO_STEP, dy: self.STEP)
        })
    }
}
