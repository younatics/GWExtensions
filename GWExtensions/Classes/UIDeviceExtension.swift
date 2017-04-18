//
//  UIDeviceExtension.swift
//  Pods
//
//  Created by Ryu on 2017. 4. 18..
//
//

extension UIDevice {
    
    // 디바이스 uuid
    public class func getUuid() -> String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
    
    // 시스템 이름
    public class func getDeviceSystemName() -> String {
        return UIDevice.current.systemName
    }
    
    // 시스템 버전
    public class func getDeviceSystemVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    // 디바이스 이름
    public class func getDeviceName() -> String {
        return UIDevice.current.name
    }
    
    // 디바이스 언어
    public class func getDeviceLanguage() -> String {
        return Bundle.main.preferredLocalizations[0]
    }
    
    // 디바이스가 폰인지
    public class func isiPhone() -> Bool {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone
    }
    
    // 디바이스가 패드인지
    public class func isiPad() -> Bool {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad
    }
}
