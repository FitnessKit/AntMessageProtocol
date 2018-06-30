//
//  DeviceType.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 6/30/18.
//

import Foundation

/// ANT Device Types
public enum DeviceType: UInt8 {
    /// Unknown
    case unknown                    = 0
    /// Sync
    case sync                       = 1
    /// Bike Power
    case bikePower                  = 11
    /// Multi Sport Speed Distance
    case multiSportSpeedDistance    = 15
    /// Controls
    case controls                   = 16
    /// Fitness Equipment
    case fitnessEquipment           = 17
    /// Blood Pressure
    case bloodPressure              = 18
    /// Geo Cache
    case geoCache                   = 19
    /// Light Electric Vehnicle
    case lightElectricVehicle       = 20
    /// Activity Monitor
    case activityMonitor            = 21
    /// Environment
    case environment                = 25
    /// Racquet
    case racquet                    = 26
    /// Muscle Oxygen
    case muscleOxygen               = 31
    /// bike Shifting
    case bikeShifting               = 34
    /// Bike Lights
    case bikeLights                 = 35
    /// Bike Lights Secondary
    case bikeLightsSecondary        = 36
    /// Bike Raadar
    case bikeRadar                  = 40
    /// Tracker
    case tracker                    = 41
    /// Dropper Seatpost
    case dropperSeatpost            = 115
    /// Bike Suspension
    case bikeSuspension             = 116
    /// Weight Scale
    case weightScale                = 119
    /// Heart Rate
    case heartRate                  = 120
    /// Bike Speed Cadence
    case bikeSpeedCadence           = 121
    /// Bike Cadence
    case bikeCadence                = 122
    /// Bike Speed
    case bikeSpeed                  = 123
    /// Stride Based Speed Distance (footpod)
    case strideBasedSpeedDistance   = 124
}

@available(swift 4.0)
extension DeviceType: Encodable {

    public var description: String {
        return String(describing: self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: TypeValueCodingKeys.self)

        try container.encode(self.description, forKey: .type)
        try container.encode(self.rawValue, forKey: .value)
    }
}
