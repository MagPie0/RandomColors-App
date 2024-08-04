//
//  ColorsDetailViewController.swift
//  RandomColors
//
//  Created by Maggie Hillebrecht on 8/3/24.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //nil collilessing
        view.backgroundColor = color ?? .purple

    }
}
