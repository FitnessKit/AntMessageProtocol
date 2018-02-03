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


public enum FitnessEquipmentType: String {
    case general        = "General"
    case treadmill      = "Treadmill"
    case elliptical     = "Elliptical"
    case stationaryBike = "Stationary Bike"
    case Climber        = "Climber"
    case nordicSkier    = "Nordic Skier"
    case trainer        = "Trainer"
    case trainerTorque  = "Trainer Torque"
}

public enum FitnessEquipmentState: Int {
    case reserved       = 0
    case asleep         = 1
    case ready          = 2
    case inUse          = 3
    case paused         = 4

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
