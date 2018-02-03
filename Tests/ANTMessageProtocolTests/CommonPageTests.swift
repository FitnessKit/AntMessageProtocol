//
//  CommonPageTests.swift
//  ANTMessageProtocol
//
//  Created by Kevin Hoogheem on 4/8/17.
//
//

import Foundation

import XCTest
@testable import ANTMessageProtocol

extension ANTMessageProtocolTests {

    func testCommonPage76() {

        let sensorData: Data = Data([0x4C, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x05])

        var page: PageCommon76!

        do {
            page = try PageCommon76.decode(data: sensorData)

            print("SportMode: \(page.mode)")

        } catch  {
            XCTFail("Error: \(error)")
        }

        if page.mode != .swimming {
            XCTFail("Should be Sport Mode: Swimming")

        }

        var pageData: Data?
        page = PageCommon76(mode: .swimming)

        do {
            pageData = try page.encode()

            print("DATA \(pageData?.hexadecimalString())")

        } catch  {
            XCTFail("Error: \(error)")
            
        }

        if pageData != nil {
            if pageData != sensorData {
                XCTFail("Data didn't Encode")

            }
        }
    }

    func testCommonPage81() {
        //ANT Message Payload = [51][FF][50][0D][02][00][24][01]
        let sensorData: Data = Data([0x51, 0xFF, 0x50, 0x0D, 0x02, 0x00, 0x24, 0x01])

        var page: PageCommon81!

        do {
            page = try PageCommon81.decode(data: sensorData)

            print("Version: \(page.softwareVersion.version)")

        } catch  {
            XCTFail("Error: \(error)")
        }

        if page.softwareVersion.version != "1.38" {
            XCTFail("Version information is wrong")
        }

        if page.serialNumber.rawValue != 19136514 {
            XCTFail("serialNumber is wrong")
        }

        var pageData: Data?
        let ver = SoftwareVersion(main: 13, supplemental: .value(80))
        page = PageCommon81(softwareVersion: ver, serialNumber: .value(19136514))

        do {
            pageData = try page.encode()

            print("DATA \(pageData?.hexadecimalString())")

        } catch  {
            XCTFail("Error: \(error)")

        }

        if pageData != nil {
            if pageData != sensorData {
                XCTFail("Data didn't Encode")
                
            }
        }
    }

    func testCommonPage82() {
        //ANT Message Payload = [52][FF][FF][1A][2C][03][8B][32]
        let sensorData: Data = Data([0x52, 0xFF, 0xFF, 0x1A, 0x2C, 0x03, 0x8B, 0x32])

        var page: PageCommon82!

        do {
            page = try PageCommon82.decode(data: sensorData)

            print("Voltage: \(page.voltage)")

        } catch  {
            XCTFail("Error: \(error)")
        }

        if page.voltage == nil {
            XCTFail("Voltage should not be nil")
        }

        if let voltage = page.voltage {
            if voltage < 2.5429 {
                XCTFail("Voltage should be 2.543")
            }
        }

        XCTAssertEqual(page.operatingSeconds, 3326368, "Operating Seconds should be 3326368")

        var pageData: Data?
        let battDesc = BatteryDescriptiveField(coarseVoltage: 2, status: .ok, resolution: .sixteenSecond)
        page = PageCommon82(batteryID: nil, operatingSeconds: 3326368, fractionalVoltage: 139, batteryInfo: battDesc)

        do {
            pageData = try page.encode()

            print("DATA \(pageData?.hexadecimalString())")

        } catch  {
            XCTFail("Error: \(error)")

        }

        if pageData != nil {
            XCTAssertEqual(pageData, sensorData, "Didn't Encode correctly")
        }
    }

    func testCommonPage83() {
        //ANT Message Payload = [53][FF][0D][1B][11][92][06][09]
        let sensorData: Data = Data([0x53, 0xFF, 0x0D, 0x1B, 0x11, 0x92, 0x06, 0x09])

        var page: PageCommon83!

        do {
            page = try PageCommon83.decode(data: sensorData)

            print("Time: \(page.time)")

        } catch  {
            XCTFail("Error: \(error)")
        }
        //17:27:13 on Thursday June 18, 2009 UTC

        if page.time.day.dayOfMonth != 18 ||
            page.time.day.weekday != .thursday ||
            page.time.seconds != 13 ||
            page.time.minutes != 27 ||
            page.time.hours != 17
            {
                XCTFail("Page 83 decoded wrong.")
        }

        let day = TimeDate(seconds: 13, minutes: 27, hour: 17, day: AntDay(weekday: .thursday, dayOfMonth: 18), month: .june, year: 2009)

        var pageData: Data?
        page = PageCommon83(time: day)

        do {
            pageData = try page.encode()

            print("DATA \(pageData?.hexadecimalString())")

        } catch {
            XCTFail("Error: \(error)")
        }

        if pageData != nil {
            XCTAssertEqual(pageData, sensorData, "Didn't Encode correctly")
        }


    }

    func testCommonPage85() {

        let sensorData: Data = Data([0x55, 0xFF, 0xFF, 0xFF, 0xC8, 0xAB, 0xAA, 0x83])

        let memTest = PageCommon85.MemorySizeUnit(unitType: .byte, sizeType: .tera)

        var page: PageCommon85!

        do {
            page = try PageCommon85.decode(data: sensorData)

            print("Percentate: \(page.percentUsed)")

        } catch  {
            XCTFail("Error: \(error)")
        }

        XCTAssertEqual(page.totalSizeUnit.uint8Value, memTest.uint8Value, "Didn't Encode correctly")


        var pageData: Data?
        page = PageCommon85(percentUsed: 100.0, totalSize: 4369.1, totalSizeUnit: memTest)

        do {
            pageData = try page.encode()

            print("DATA \(pageData?.hexadecimalString())")

        } catch {
            XCTFail("Error: \(error)")
        }

        if pageData != nil {
            XCTAssertEqual(pageData, sensorData, "Didn't Encode correctly")
        }

    }

}
