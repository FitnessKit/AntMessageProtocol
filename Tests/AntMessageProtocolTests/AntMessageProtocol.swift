import XCTest
@testable import AntMessageProtocol


class AntMessageProtocolTests: XCTestCase {


    static var allTests : [(String, (AntMessageProtocolTests) -> () throws -> Void)] {
        return [
            
            //Geocache
            ("testGeocachePage0", testGeocachePage0),

            //Common pages
            ("testCommonPage76", testCommonPage76),
            ("testCommonPage81", testCommonPage81),
            ("testCommonPage82", testCommonPage82)

        ]
    }


    static var commonPageTests : [(String, (AntMessageProtocolTests) -> () throws -> Void)] {
        return [
            //Common pages
            ("testCommonPage76", testCommonPage76),
            ("testCommonPage81", testCommonPage81),
            ("testCommonPage82", testCommonPage82)
        ]
    }

}
