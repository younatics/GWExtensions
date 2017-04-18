//
//  UnicodeScalarExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

import UIKit

public extension UnicodeScalar {
    
    // 이모지인지
    var isEmoji: Bool {
        switch value {
        case 0x3030, 0x00AE, 0x00A9,
             0x1D000 ... 0x1F77F,
             0xFE00 ... 0xFE0F,
             0x1F900 ... 0x1F9FF:
            return true
        case 0xFFFD:
            return false
        default:
            return false
        }
    }
}
