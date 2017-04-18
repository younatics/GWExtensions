//
//  StringExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

import UIKit

public extension String {
    
    // 문자열 공백 삭제
    public var stringTrim: String{
       return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}
