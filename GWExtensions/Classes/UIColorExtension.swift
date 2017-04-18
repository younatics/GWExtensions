//
//  UIColorExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

extension UIColor
{
    // View 색상을 한가지로 통일
    public func setOneColor(_ value: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: value/255.0, green: value/255.0, blue: value/255.0, alpha: alpha)
    }
}
