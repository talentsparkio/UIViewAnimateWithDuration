//
//  AlphaExampleViewController.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/29/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class AlphaExampleViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var fadeInButton: UIButton!
    @IBOutlet weak var fadeOutButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        fadeInButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func fadeIn(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.textField.alpha = 100
            }, completion: { finished in
                if(finished) {
                    self.fadeInButton.enabled = false
                    self.fadeOutButton.enabled = true
                }
        })
    }

    @IBAction func fadeOut(sender: UIButton) {
        UIView.animateWithDuration(1.0, animations: {
            self.textField.alpha = 0
            }, completion: { finished in
                if(finished) {
                    self.fadeOutButton.enabled = false
                    self.fadeInButton.enabled = true
                }
        })
    }
}
