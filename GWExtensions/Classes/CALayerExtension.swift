//
//  CALayerExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

import UIKit

public extension CALayer {
    
    // View, Component 에 Border 생성 (방향, 색상, 굵기)
    public func addBorder(_ arr_edge: [UIRectEdge], color: UIColor, thickness: CGFloat) {
        
        for edge in arr_edge {
            let border = CALayer()
            switch edge {
            case UIRectEdge.top:
                border.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: thickness)
                break
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - thickness, width: frame.width, height: thickness)
                break
            case UIRectEdge.left:
                border.frame = CGRect.init(x: 0, y: 0, width: thickness, height: frame.height)
                break
            case UIRectEdge.right:
                border.frame = CGRect.init(x: frame.width - thickness, y: 0, width: thickness, height: frame.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
    
    public func border_width_color(_ width: CGFloat, color: UIColor) {
        self.borderWidth = width
        self.borderColor = color.cgColor
    }
}
