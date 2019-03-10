//
//  ANTFSTypes.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 4/8/17.
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

/// ANTFS Beacon Perio
public enum AntFsBeaconPeriod: UInt8 {
    /// Half Hertz
    case halfHertz          = 0
    /// One Hertz
    case oneHertz           = 1
    /// Two Hertz
    case twoHertz           = 2
    /// Four Hertz
    case fourHertz          = 3
    /// Eight Hertz
    case eightHertz         = 4
    /// Match Established Hertz
    case matchEstablished   = 7
}

/// ANTFS Client State
public enum AntFsClientState: UInt8 {
    /// Link
    case link               = 0
    /// Authentication
    case authentication     = 1
    /// Transport
    case transport          = 2
    /// Busy
    case busy               = 3

    /// Reserved
    case reserved           = 15
}

/// ANTFS Authorization Type
public enum AntFsAuthType: UInt8 {
    /// Pass-through supported (pairing & passkey optional)
    case passThrough        = 0
    /// Pairing Only
    case pairingOnly        = 2
    /// PassKey and Pairing Only
    case passKeyAndPairing  = 3

    /// Reserved
    case reserved           = 255
}

/// ANTFS Status Byte1
public struct AntFsStatusByte1 {

    fileprivate(set) public var beaconPeriod: AntFsBeaconPeriod

    fileprivate(set) public var pairingEnabled: Bool

    fileprivate(set) public var uploadEnabled: Bool

    fileprivate(set) public var dataAvailable: Bool

    public var uint8Value: UInt8 {
        var value: UInt8 = beaconPeriod.rawValue
        value |= UInt8(pairingEnabled.uint8Value) << 3
        value |= UInt8(uploadEnabled.uint8Value) << 4
        value |= UInt8(dataAvailable.uint8Value) << 5

        return UInt8(value)
    }

    public init(_ value: UInt8) {

        self.beaconPeriod = AntFsBeaconPeriod(rawValue: (value & 0x07)) ?? .fourHertz

        self.pairingEnabled = ((value & 0x08) >> 3).boolValue
        self.uploadEnabled = ((value & 0x10) >> 4).boolValue
        self.dataAvailable = ((value & 0x20) >> 5).boolValue

    }

    public init(beacon: AntFsBeaconPeriod, pairingEnabled: Bool, uploadEnabled: Bool, dataAvailable: Bool) {
        self.beaconPeriod = beacon
        self.pairingEnabled = pairingEnabled
        self.uploadEnabled = uploadEnabled
        self.dataAvailable = dataAvailable
    }

}

/// ANTFS Status Byte2
public struct AntFsStatusByte2 {

    fileprivate(set) public var deviceState: AntFsClientState

    public var uint8Value: UInt8 {
        let value: UInt8 = deviceState.rawValue
        return UInt8(value)
    }

    public init(_ value: UInt8) {

        self.deviceState = AntFsClientState(rawValue: (value & 0x0F)) ?? .reserved
    }

    public init(deviceState: AntFsClientState) {
        self.deviceState = deviceState
    }
    
}
