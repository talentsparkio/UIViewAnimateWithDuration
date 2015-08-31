//
//  ShareViewController.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/30/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // http://stackoverflow.com/questions/25538995/cant-load-uiviewcontroller-xib-file-in-storyboard-in-swift
    required init(coder aDecoder: NSCoder) {
        super.init(nibName: "ShareViewController", bundle: NSBundle.mainBundle())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func shareViaEmail(sender: UIButton) {
        print("Share via email clicked")
    }

    @IBAction func shareViaTwitter(sender: UIButton) {
        print("Share via Twitter clicked")
    }
    @IBAction func shareViaFacebook(sender: UIButton) {
        print("Share via Facebook clicked")
    }
}
