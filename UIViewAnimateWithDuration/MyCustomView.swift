//
//  MyCustomView.swift
//  UIViewAnimateWithDuration
//
//  Created by Nick Chen on 8/29/15.
//  Copyright © 2015 Nick Chen. All rights reserved.
//

import UIKit

class MyCustomView: UIView {

    // This is here to force auto layout to work
    override func intrinsicContentSize() -> CGSize {
        return CGSizeMake(200, 200)
    }


}
