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
    public func stringTrim(string: String) -> String {
        return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}
