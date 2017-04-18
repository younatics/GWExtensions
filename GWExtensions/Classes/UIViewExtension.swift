//
//  UIViewExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

import UIKit

extension UIView
{
    public class func copyView() -> AnyObject {
        return NSKeyedUnarchiver.unarchiveObject(with: NSKeyedArchiver.archivedData(withRootObject: self))! as AnyObject
    }
    
    public func nextViewOriginY() -> CGFloat {
        return self.frame.origin.y + self.frame.size.height
    }
    
    public func nextViewOriginX() -> CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    
    public func setSquareImage() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
