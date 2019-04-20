//
//  Battery.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 4/9/17.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

/// Battery Status
public enum BatteryStatus: UInt8 {
    /// Reserved
    case reserved       = 0
    /// New
    case new            = 1
    /// Good
    case good           = 2
    /// OK
    case ok             = 3
    /// Low
    case low            = 4
    /// Critical
    case critical       = 5
    /// Charging (FIT)
    case charging       = 6
    /// Unknown
    case unknown        = 7
    /// Invalid
    case invalid        = 255
}

public extension BatteryStatus {

    /// String Value for Battery Status
    var stringValue: String {
        switch self {
        case .reserved:
            return "Reserved"
        case .new:
            return "New"
        case .good:
            return "Good"
        case .ok:
            return "Ok"
        case .low:
            return "Low"
        case .critical:
            return "Critical"
        case .charging:
            return "Charging"
        case .unknown:
            return "Unknown"
        case .invalid:
            return "Invalid"
        }
    }
}

/// Cumulative Operating Resolution
public enum CumulativeOperatingResolution: UInt8 {
    /// Sixteen Seconds
    case sixteenSecond      = 0
    /// Two Seconds
    case twoSecond          = 1

    public var multiplier: UInt8 {
        switch self {
        case .sixteenSecond:
            return 16
        default:
            return 2
        }
    }
}


/// Identifies the battery in system to which this battery 
/// status pertains and specifies how many batteries are 
/// available in the system.
public struct BatteryIdentifier {

    /// Number of Batteries max of 15
    fileprivate(set) public var count: UInt8

    /// Battery Identifier
    fileprivate(set) public var identifier: UInt8

    public var uint8Value: UInt8 {
        var value: UInt8 = count
        value |= UInt8(identifier) << 4

        return UInt8(value)
    }

    public init(_ value: UInt8) {
        self.count = (value & 0x0F)
        self.identifier = ((value & 0xF0) >> 4)
    }


    public init(count: UInt8, identifier: UInt8) {
        self.count = min(15, count)
        self.identifier = identifier
    }
}

/// Battery Descriptive Field
public struct BatteryDescriptiveField {

    /// Course Voltage
    public let coarseVoltage: UInt8

    /// Battery Status
    public let status: BatteryStatus

    /// Resolution
    public let resolution: CumulativeOperatingResolution

    /// UInt8 value
    public var uint8Value: UInt8 {
        var value: UInt8 = coarseVoltage
        value |= UInt8(status.rawValue) << 4
        value |= UInt8(resolution.rawValue) << 7

        return UInt8(value)
    }

    public init(_ value: UInt8) {
        self.coarseVoltage = (value & 0x0F)
        self.status = BatteryStatus(rawValue: ((value & 0x70) >> 4)) ?? .invalid
        self.resolution = CumulativeOperatingResolution(rawValue: ((value & 0x80) >> 7)) ?? .twoSecond
    }

    public init(coarseVoltage: UInt8, status: BatteryStatus, resolution: CumulativeOperatingResolution) {
        self.coarseVoltage = min(15, coarseVoltage)
        self.status = status
        self.resolution = resolution
    }
    
}
