//
//  FitnessEquipmentTypes.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 3/19/17.
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


/// Fitness Equipment Type
public enum FitnessEquipmentType: String {
    /// General
    case general        = "General"
    /// Treadmill
    case treadmill      = "Treadmill"
    /// Elliptical
    case elliptical     = "Elliptical"
    /// Stationary Bike
    case stationaryBike = "Stationary Bike"
    /// Climber
    case Climber        = "Climber"
    /// Nordic Skier
    case nordicSkier    = "Nordic Skier"
    /// Trainer
    case trainer        = "Trainer"
    /// Trainer Torque
    case trainerTorque  = "Trainer Torque"
}

/// Fitness Eqiupment State
public enum FitnessEquipmentState: Int {
    /// Reserved
    case reserved       = 0
    /// Asleep
    case asleep         = 1
    /// Ready
    case ready          = 2
    /// In Use
    case inUse          = 3
    /// Puased - Finished
    case paused         = 4

    /// State String Value
    public var stringValue: String {
        switch self {
        case .asleep:
            return "Asleep"
        case .ready:
            return "Ready"
        case .inUse:
            return "In Use"
        case .paused:
            return "Paused"
        default:
            return "Unknown"
        }
    }

    /// Checks if the State is allowed to Transition
    ///
    /// - Parameter state: State to Transition to
    /// - Returns: Transition allowed
    /// - Note: This is the offical state, but you may need to allow all transitions
    ///  since you may not start receiving data from the asleep or ready state
    public func canTransition(state: FitnessEquipmentState) -> Bool {

        switch (self, state) {
        case (.asleep, .ready):
            return true
        case (.ready, .asleep),
             (.ready, .inUse):
            return true
        case (.inUse, .paused):
            return true;
        case (.paused, .ready),
             (.paused, .inUse),
             (.paused, .asleep):
            return true;
        default:
            return false
        }
    }
}
