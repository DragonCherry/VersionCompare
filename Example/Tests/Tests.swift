import UIKit
import XCTest
import VersionCompare

class Tests: XCTestCase {
    
    override func setUp() { super.setUp() }
    override func tearDown() { super.tearDown() }
    
    func testExample() {
        XCTAssertTrue(UIDevice.current.systemVersion.isVersion(lessThan: "99.0.0"))
        XCTAssertTrue(UIDevice.current.systemVersion.isVersion(equalTo: UIDevice.current.systemVersion))
        XCTAssertTrue(UIDevice.current.systemVersion.isVersion(greaterThan: "3.5.99"))
        XCTAssertTrue(UIDevice.current.systemVersion.isVersion(lessThanOrEqualTo: "13.5.99"))
        XCTAssertTrue(UIDevice.current.systemVersion.isVersion(greaterThanOrEqualTo: UIDevice.current.systemVersion))
        XCTAssertTrue("0.1.1".isVersion(greaterThan: "0.1"))
        XCTAssertTrue("0.1.0".isVersion(equalTo: "0.1"))
        XCTAssertTrue("0000.0".isVersion(equalTo: "0.00.00000000.0.0.0.0.0.0.0.0000.00.0.0"))
        XCTAssertTrue("10.0.0".isVersion(equalTo: "10"))
        XCTAssertTrue("10.0.1".isVersion(equalTo: "10.0.1"))
        XCTAssertTrue("5.10.10".isVersion(lessThan: "5.11.5"))
        XCTAssertTrue("1.0.0".isVersion(greaterThan: "0.99.100"))
        XCTAssertTrue("0.5.3".isVersion(lessThanOrEqualTo: "1.0.0"))
        XCTAssertTrue("0.5.29".isVersion(greaterThanOrEqualTo: "0.5.3"))
        XCTAssertTrue("0.5.30".isVersion(greaterThanOrEqualTo: "0.5.29"))
        XCTAssertTrue("0.4.30".isVersion(greaterThanOrEqualTo: "0.3.558"))
    }
}
