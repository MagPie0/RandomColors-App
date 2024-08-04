//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Maggie Hillebrecht on 8/3/24.
//

import UIKit

extension UIColor {
    //spits out the random color
    static func Random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1) //opacity
        return randomColor
    }
}
