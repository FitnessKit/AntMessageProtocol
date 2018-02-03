import XCTest
@testable import AntMessageProtocol


class AntMessageProtocolTests: XCTestCase {


    static var allTests : [(String, (AntMessageProtocolTests) -> () throws -> Void)] {
        return [
            /// Manufacturer
            ("testRegisterManufacturer", testRegisterManufacturer),
            ("testDupManufacturer", testDupManufacturer),
            ("testFindManufacturer", testFindManufacturer),

        ]
    }

    static var manufacturerTests : [(String, (AntMessageProtocolTests) -> () throws -> Void)] {
        return [
            /// Manufacturer
            ("testRegisterManufacturer", testRegisterManufacturer),
            ("testDupManufacturer", testDupManufacturer),
            ("testFindManufacturer", testFindManufacturer),
        ]
    }

}
