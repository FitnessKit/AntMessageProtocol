//
//  ANTTypes.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 3/28/17.
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

/// ANT Channel Type
///
/// - slave: Slave
/// - master: Master
/// - sharedSlave: Shared Bidirectional Slave
/// - sharedMaster: Shared Bidirectional Master
/// - slaveReceiveOnly: Slave Receive Only Channel
/// - masterTransmitOnly: Master Transit Only Channel
public enum ChannelType: UInt8 {
    ///Slave
    case slave              = 0
    ///Master
    case master             = 16
    ///Shared Bidirectional Slave
    case sharedSlave        = 32
    ///Shared Bidirectional Master Channel
    case sharedMaster       = 48
    ///Slave Receive Only Channel (diagnostic)
    case slaveReceiveOnly   = 64
    ///Master Transmit Only Channel (legacy)
    case masterTransmitOnly = 80
}

/// ANT Transmission Types
///
/// - pairing: Pairing
/// - independentChannel: Independent Channel
/// - sharedChannelOneByteAddress: Shared Channl 1 Byte Addressing
/// - sharedChannelTwoByteAddress: Shared Channel 2 Byte Addressing
/// - commonPages: Supports Common Pages ANT+
/// - kicker: Special Case for Wahoo Kickr
public enum TransmissionType: UInt8 {
    case pairing                        = 0
    case independentChannel             = 1
    case sharedChannelOneByteAddress    = 2
    case sharedChannelTwoByteAddress    = 3
    case commonPages                    = 5
    case shared                         = 6
    //Special Case for Wahoo Kicker
    case kicker                         = 165
}

/// ANT Device Types
public enum DeviceType: UInt8 {
    case unknown                    = 0
    case sync                       = 1
    case bikePower                  = 11
    case multiSportSpeedDistance    = 15
    case controls                   = 16
    case fitnessEquipment           = 17
    case bloodPressure              = 18
    case geoCache                   = 19
    case lightElectricVehicle       = 20
    case activityMonitor            = 21
    case environment                = 25
    case racquet                    = 26
    case muscleOxygen               = 31
    case bikeShifting               = 34
    case bikeLights                 = 35
    case bikeLightsSecondary        = 36
    case bikeRadar                  = 40
    case tracker                    = 41
    case dropperSeatpost            = 115
    case bikeSuspension             = 116
    case weightScale                = 119
    case heartRate                  = 120
    case bikeSpeedCadence           = 121
    case bikeCadence                = 122
    case bikeSpeed                  = 123
    case strideBasedSpeedDistance   = 124
}
