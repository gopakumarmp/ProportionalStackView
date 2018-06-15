//
//  MyView.swift
//  test_auto_layout
//
//  Created by Gopakumar MP on 6/14/18.
//  Copyright © 2018 Gopakumar MP. All rights reserved.
//

import UIKit

class MyView: UIView {
    var height = 1.0
    
    override open var intrinsicContentSize: CGSize {
        return CGSize(width: 1.0, height: height)
    }
}
