//
//  BackgroundImageExampleViewController.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/30/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class BackgroundImageExampleViewController: UIViewController {

    @IBOutlet weak var dialogView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let scale = CGAffineTransformMakeScale(0.25, 0.25)
        let translate = CGAffineTransformMakeTranslation(0, 600)
        dialogView.transform = CGAffineTransformConcat(scale, translate)

        UIView.animateWithDuration(1.0, animations: {
            let scale = CGAffineTransformMakeScale(1, 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            self.dialogView.transform = CGAffineTransformConcat(scale, translate)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
