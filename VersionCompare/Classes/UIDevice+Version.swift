//
//  UIDevice+Version.swift
//  Pods
//
//  Created by DragonCherry on 5/11/17.
//
//

import Foundation

extension String {
    
    /// Inner comparison utility to handle same versions with different length. (Ex: "1.0.0" & "1.0")
    private func compare(toVersion targetVersion: String) -> ComparisonResult {
        
        let versionDelimiter = "."
        var result: ComparisonResult = .orderedSame
        var versionComponents = components(separatedBy: versionDelimiter)
        var targetComponents = targetVersion.components(separatedBy: versionDelimiter)
        let spareCount = versionComponents.count - targetComponents.count
        
        if spareCount == 0 {
            result = compare(targetVersion, options: .numeric)
        } else {
            let spareZeros = repeatElement("0", count: abs(spareCount))
            if spareCount > 0 {
                targetComponents.append(contentsOf: spareZeros)
            } else {
                versionComponents.append(contentsOf: spareZeros)
            }
            result = versionComponents.joined(separator: versionDelimiter)
                .compare(targetComponents.joined(separator: versionDelimiter), options: .numeric)
        }
        return result
    }
    
    public func isVersion(equalTo targetVersion: String) -> Bool { return compare(toVersion: targetVersion) == .orderedSame }
    public func isVersion(greaterThan targetVersion: String) -> Bool { return compare(toVersion: targetVersion) == .orderedDescending }
    public func isVersion(greaterThanOrEqualTo targetVersion: String) -> Bool { return compare(toVersion: targetVersion) != .orderedAscending }
    public func isVersion(lessThan targetVersion: String) -> Bool { return compare(toVersion: targetVersion) == .orderedAscending }
    public func isVersion(lessThanOrEqualTo targetVersion: String) -> Bool { return compare(toVersion: targetVersion) != .orderedDescending }
}

extension UIDevice {
    open class func isSystemVersion(equalTo version: String) -> Bool { return UIDevice.current.systemVersion.isVersion(equalTo: version) }
    open class func isSystemVersion(greaterThan version: String) -> Bool { return UIDevice.current.systemVersion.isVersion(greaterThan: version) }
    open class func isSystemVersion(greaterThanOrEqualTo version: String) -> Bool { return UIDevice.current.systemVersion.isVersion(greaterThanOrEqualTo: version) }
    open class func isSystemVersion(lessThan version: String) -> Bool { return UIDevice.current.systemVersion.isVersion(lessThan: version) }
    open class func isSystemVersion(lessThanOrEqualTo version: String) -> Bool { return UIDevice.current.systemVersion.isVersion(lessThanOrEqualTo: version) }
}
