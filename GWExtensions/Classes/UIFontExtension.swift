//
//  UIViewExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

import UIKit

public extension UIFont {
    
    public enum TextStyle {
        case SystemBold
        case SystemRegular
        case HelveticaBold
        case HelveticaRegular
        case HelveticaLight
        case HelveticaMedium
    }
    
    // 시스템 폰트 화면 인치에 따른 비율조정
    public class func resolutionFontSize(style: TextStyle,size: CGFloat) -> UIFont {
        let size_formatter = size/375
        let fontsize = UIScreen.main.bounds.width * size_formatter
        
        switch style {
        case .SystemBold:
            return UIFont.boldSystemFont(ofSize: fontsize)
        case .SystemRegular:
            return UIFont.systemFont(ofSize: fontsize)
        case .HelveticaBold:
            guard let font = UIFont(name: "HelveticaNeue-Bold", size: fontsize) else { return UIFont() }
            return font
        case .HelveticaRegular:
            guard let font = UIFont(name: "HelveticaNeue-Regular", size: fontsize) else { return UIFont() }
            return font
        case .HelveticaLight:
            guard let font = UIFont(name: "HelveticaNeue-BolLightd", size: fontsize) else { return UIFont() }
            return font
        case .HelveticaMedium:
            guard let font = UIFont(name: "HelveticaNeue-Medium", size: fontsize) else { return UIFont() }
            return font        }
    }
}
