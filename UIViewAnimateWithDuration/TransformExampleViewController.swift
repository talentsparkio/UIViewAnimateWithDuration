//
//  TransformExampleViewController.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/29/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class TransformExampleViewController: UIViewController {

    @IBOutlet weak var myCustomView: MyCustomView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let scale = CGAffineTransformMakeScale(0.25, 0.25)
        let translate = CGAffineTransformMakeTranslation(0, -300)
        myCustomView.transform = CGAffineTransformConcat(scale, translate)

        UIView.animateWithDuration(1.0, animations: {
            let scale = CGAffineTransformMakeScale(1, 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            self.myCustomView.transform = CGAffineTransformConcat(scale, translate)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func dismissMe(sender: UITapGestureRecognizer) {
        UIView.animateWithDuration(0.5, animations: {
            self.myCustomView.alpha = 0
            }, completion: {finished in
                self.myCustomView.removeFromSuperview()
        })
    }
}
