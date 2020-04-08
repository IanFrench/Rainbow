//
//  ColorDetailViewController.swift
//  RBOW2
//
//  Created by Ian French on 4/8/20.
//  Copyright © 2020 Ian French. All rights reserved.
//


import UIKit

class ColorDetailViewController: UIViewController {

    
    var cellColor: Color?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let color = cellColor {
            title = color.colorName
            view.backgroundColor = color.color
        }
    }
 

}
