//
//  UIDevice+Version.swift
//  Pods
//
//  Created by DragonCherry on 5/11/17.
//
//

import Foundation

extension UIDevice {
    
    open class func isSystemVersion(equalTo version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(
            version,
            options: .numeric) == .orderedSame
    }
    
    open class func isSystemVersion(greaterThan version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(
            version,
            options: .numeric) == .orderedDescending
    }
    
    open class func isSystemVersion(greaterThanOrEqualTo version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(
            version,
            options: .numeric) != .orderedAscending
    }
    
    open class func isSystemVersion(lessThan version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(
            version,
            options: .numeric) == .orderedAscending
    }
    
    open class func isSystemVersion(lessThanOrEqualTo version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(
            version,
            options: .numeric) != .orderedDescending
    }
    
    open class func isVersion(_ version: String, equalTo targetVersion: String) -> Bool {
        return version.compare(
            targetVersion,
            options: .numeric) == .orderedSame
    }
    
    open class func isVersion(_ version: String, greaterThan targetVersion: String) -> Bool {
        return version.compare(
            targetVersion,
            options: .numeric) == .orderedDescending
    }
    
    open class func isVersion(_ version: String, greaterThanOrEqualTo targetVersion: String) -> Bool {
        return version.compare(
            targetVersion,
            options: .numeric) != .orderedAscending
    }
    
    open class func isVersion(_ version: String, lessThan targetVersion: String) -> Bool {
        return version.compare(
            targetVersion,
            options: .numeric) == .orderedAscending
    }
    
    open class func isVersion(_ version: String, lessThanOrEqualTo targetVersion: String) -> Bool {
        return version.compare(
            targetVersion,
            options: .numeric) != .orderedDescending
    }
}
