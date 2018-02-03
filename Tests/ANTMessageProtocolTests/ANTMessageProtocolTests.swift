import XCTest
@testable import ANTMessageProtocol


class ANTMessageProtocolTests: XCTestCase {


    static var allTests : [(String, (ANTMessageProtocolTests) -> () throws -> Void)] {
        return [
            
            //Geocache
            ("testGeocachePage0", testGeocachePage0),

            //Common pages
            ("testCommonPage76", testCommonPage76),
            ("testCommonPage81", testCommonPage81),
            ("testCommonPage82", testCommonPage82)

        ]
    }


    static var commonPageTests : [(String, (ANTMessageProtocolTests) -> () throws -> Void)] {
        return [
            //Common pages
            ("testCommonPage76", testCommonPage76),
            ("testCommonPage81", testCommonPage81),
            ("testCommonPage82", testCommonPage82)
        ]
    }

}
