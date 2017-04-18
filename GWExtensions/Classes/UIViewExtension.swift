//
//  UIViewExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

import UIKit

public extension UIView
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
    
    // 원형 프레임 잡아주기
    public func setSquareImage() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
    
    // 모든 서브뷰 삭제
    public func removeAllSubviews() {
        for subview in self.subviews {
            subview.removeFromSuperview()
        }
    }
}
