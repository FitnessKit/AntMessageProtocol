//
//  GeocacheTests.swift
//  ANTMessageProtocol
//
//  Created by Kevin Hoogheem on 4/2/17.
//
//

import XCTest
@testable import AntMessageProtocol

extension AntMessageProtocolTests {

    func testGeocachePage0() {
        let sensorData: Data = Data([0x00, 0x86, 0xED, 0x0B, 0x00, 0x00, 0x00, 0x00])

        do {
            let page: PageGeocache0 = try PageGeocache0.decode(data: sensorData)

            print("ID:\(page.identification)")

            switch page.identification {
            case .invalid:
                print("Invalid User ID")

            case .unprogrammed:
                print("Unprogrammed User ID")

            case .value(let str):
                print("User ID: \(str)")
            }

        } catch  {
            XCTFail("Error: \(error)")
        }

        let page: PageGeocache0 = PageGeocache0(identification: .value("ANT+"))

        do {
            let data = try page.encode()

            print("DATA \(data.hexadecimalString())")

        } catch  {
            XCTFail("Error: \(error)")
            
        }
    }

    func testGeocachePage1() {
        let sensorData: Data = Data([0x01, 0xFF, 0xAF, 0xFF, 0xFF, 0xFF, 0x20, 0xFF])


        do {
            let page: PageGeocache1 = try PageGeocache1.decode(data: sensorData)

            print("PIN: \(page.pin)")

            switch page.pin {
            case .invalid:
                print("Invalid PIN")

            case .value(let num):
                print("PIN: \(num)")
            }


            switch page.pages {
            case .invalid:
                print("Invalid Pages")

            case .value(let num):
                print("Pages: \(num)")
            }

        } catch  {
            XCTFail("Error: \(error)")
        }

        let page: PageGeocache1 = PageGeocache1(pin: .value(3735928559), pages: .value(20))

        do {
            let data = try page.encode()

            print("DATA \(data.hexadecimalString())")

        } catch  {
            XCTFail("Error: \(error)")
            
        }
    }



    func testGeocachePage32() {
        let sensorData: Data = Data([0x20, 0xFF, 0xAF, 0xFF, 0xFF, 0xFF, 0x20, 0xFF])

        do {
            let page: PageGeocache32 = try PageGeocache32.decode(data: sensorData)

            print("Authentication Token: \(page.token)")

        } catch  {
            XCTFail("Error: \(error)")
        }

        let page: PageGeocache32 = PageGeocache32(nonce: 65535, serialNumber: 2222)

        do {
            let data = try page.encode()

            print("DATA \(data.hexadecimalString())")
            
        } catch  {
            XCTFail("Error: \(error)")
            
        }

        
    }


}
