import UIKit
import XCTest
import VersionCompare

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        
        XCTAssertTrue(UIDevice.isSystemVersion(lessThan: "99.0.0"))
        XCTAssertTrue(UIDevice.isSystemVersion(equalTo: UIDevice.current.systemVersion))
        XCTAssertTrue(UIDevice.isSystemVersion(greaterThan: "3.5.99"))
        XCTAssertTrue(UIDevice.isSystemVersion(lessThanOrEqualTo: "13.5.99"))
        XCTAssertTrue(UIDevice.isSystemVersion(greaterThanOrEqualTo: UIDevice.current.systemVersion))
        XCTAssertTrue(UIDevice.isVersion("10.0.1", equalTo: "10.0.1"))
        XCTAssertTrue(UIDevice.isVersion("5.10.10", lessThan: "5.11.5"))
        XCTAssertTrue(UIDevice.isVersion("1.0.0", greaterThan: "0.99.100"))
        XCTAssertTrue(UIDevice.isVersion("0.5.3", lessThanOrEqualTo: "1.0.0"))
        XCTAssertTrue(UIDevice.isVersion("0.5.29", greaterThanOrEqualTo: "0.5.3"))
    }
}
