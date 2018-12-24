//
//  UIColor+KDColor.swift
//  KDUIKit
//
//  Created by 徐梦路 on 2018/11/23.
//

import Foundation
public extension UIColor {
    
    // MARK: - Initializers
    convenience init(rgb: UInt32, alpha: CGFloat = 1.0) {
        let red = CGFloat((rgb >> 16) & 0xFF) / 255.0
        let green = CGFloat((rgb >> 8) & 0xFF) / 255.0
        let blue = CGFloat(rgb & 0xFF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    public func kdColorWithHex(_ hex : UInt32)  -> UIColor{
        return UIColor.kdColorWithHex(hex)
    }
    
    public func kdColorWithHex(_ hex : UInt32 , andAlpha : CGFloat) -> UIColor{
         return UIColor.init(rgb: hex, alpha: andAlpha)
    }
}
