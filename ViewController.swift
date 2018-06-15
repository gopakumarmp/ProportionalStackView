//
//  ViewController.swift
//  ProportionalStackView
//
//  Created by Gopakumar MP on 6/14/18.
//  Copyright © 2018 Gopakumar MP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
    }
    
    func addSubviews() {
        let subviews = (0..<3).map { (_) -> MyView in
            return UINib(nibName: "MyView", bundle: nil).instantiate(withOwner: nil,
                                                                     options: nil)[0] as! MyView
        }
        
        subviews[0].backgroundColor = UIColor.red
        subviews[1].backgroundColor = UIColor.green
        subviews[2].backgroundColor = UIColor.blue
        
        subviews.forEach { (view) in
            stackView.addArrangedSubview(view)
        }
        subviews[0].height = 30
        subviews[1].height = 20
        subviews[2].height = 10

    }
}

