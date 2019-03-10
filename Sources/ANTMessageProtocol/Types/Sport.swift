//
//  Sport.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 1/20/18.
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

/// FIT Sport Types
public enum Sport: UInt8 {
    /// Generic
    case generic                = 0
    /// Running
    case running                = 1
    /// Cycling
    case cycling                = 2
    /// Multi-Sport Transition
    case multisportTransition   = 3
    /// Fitness Equipment
    case fitnessEquipment       = 4
    /// Swimming
    case swimming               = 5
    /// Basketball
    case basketball             = 6
    /// Soccer
    case soccer                 = 7
    /// Tennis
    case tennis                 = 8
    /// American Football
    case americanFootball       = 9
    /// Training
    case training               = 10
    /// Walking
    case walking                = 11
    /// Cross Country Skiing
    case crossCountrySkiing     = 12
    /// Alpine Skiing
    case alpineSkiing           = 13
    /// Snow Boarding
    case snowboarding           = 14
    /// Rowing
    case rowing                 = 15
    /// Mountaineering
    case mountaineering         = 16
    /// Hiking
    case hiking                 = 17
    /// Mulitsport
    case mulitsport             = 18
    /// Paddling
    case paddling               = 19
    /// Flying
    case flying                 = 20
    /// eBiking
    case eBiking                = 21
    /// Motorcycling
    case motorcycling           = 22
    /// Boating
    case boating                = 23
    /// Driving
    case driving                = 24
    /// Golf
    case golf                   = 25
    /// Hang Gliding
    case hangGliding            = 26
    /// Horseback Riding
    case horsebackRiding        = 27
    /// Hunting
    case hunting                = 28
    /// Fishing
    case fishing                = 29
    /// Inline Skating
    case inlineSkating          = 30
    //// Rock Climbing
    case rockClimbing           = 31
    /// Sailing
    case sailing                = 32
    /// Ice Skating
    case iceSkating             = 33
    /// Sky Diving
    case skyDiving              = 34
    /// Snowshoeing
    case snowshoeing            = 35
    /// Snowmobiling
    case snowmobiling           = 36
    /// Stand Up Paddel Boarding
    case standUpPaddelboarding  = 37
    /// Surfing
    case surfing                = 38
    /// Wakeboarding
    case wakeboarding           = 39
    /// Water Skiing
    case waterSkiing            = 40
    /// Kayaking
    case kayaking               = 41
    /// Rafting
    case rafting                = 42
    /// Wind Surfing
    case windSurfing            = 43
    /// Kite Surfing
    case kiteSurfing            = 44
    /// Tactical
    case tactical               = 45
    /// Jump Master
    case jumpMaster             = 46
    /// Boxing
    case boxing                 = 47
    /// Floor Climbing
    case floorClimbing          = 48
    /// All
    case all                    = 254
    /// Invalid
    case invalid                = 255
}

extension Sport {

    /// String Value for the Enum
    public var description: String {
        return String(describing: self)
    }
}

extension Sport {

    /// String value for Sport
    public var stringValue: String {
        switch self {
        case .generic:
            return "Generic"
        case .running:
            return "Running"
        case .cycling:
            return "Cycling"
        case .multisportTransition:
            return "Multi-Sport Transition"
        case .fitnessEquipment:
            return "Fitness Equipment"
        case .swimming:
            return "Swimming"
        case .basketball:
            return "Basketball"
        case .soccer:
            return "Soccer"
        case .tennis:
            return "Tennis"
        case .americanFootball:
            return "American Football"
        case .training:
            return "Training"
        case .walking:
            return "Walking"
        case .crossCountrySkiing:
            return "Cross Country Skiing"
        case .alpineSkiing:
            return "Alpine Skiing"
        case .snowboarding:
            return "Snow Boarding"
        case .rowing:
            return "Rowing"
        case .mountaineering:
            return "Mountaineering"
        case .hiking:
            return "Hiking"
        case .mulitsport:
            return "Multisport"
        case .paddling:
            return "Paddling"
        case .flying:
            return "Flying"
        case .eBiking:
            return "eBiking"
        case .motorcycling:
            return "Motorcycling"
        case .boating:
            return "Boating"
        case .driving:
            return "Driving"
        case .golf:
            return "Golf"
        case .hangGliding:
            return "Hang Gliding"
        case .horsebackRiding:
            return "Horseback Riding"
        case .hunting:
            return "Hunting"
        case .fishing:
            return "Fishing"
        case .inlineSkating:
            return "Inline Skating"
        case .rockClimbing:
            return "Rock Climbing"
        case .sailing:
            return "Sailing"
        case .iceSkating:
            return "Ice Skating"
        case .skyDiving:
            return "Sky Diving"
        case .snowshoeing:
            return "Snowshoeing"
        case .snowmobiling:
            return "Snowmobiling"
        case .standUpPaddelboarding:
            return "Stand Up Paddel Boarding"
        case .surfing:
            return "Surfing"
        case .wakeboarding:
            return "Wakeboarding"
        case .waterSkiing:
            return "Water Skiing"
        case .kayaking:
            return "Kayaking"
        case .rafting:
            return "Rafting"
        case .windSurfing:
            return "Wind Surfing"
        case .kiteSurfing:
            return "Kite Surfing"
        case .tactical:
            return "Tactical"
        case .jumpMaster:
            return "Jump Master"
        case .boxing:
            return "Boxing"
        case .floorClimbing:
            return "Floor Climbing"
        case .all:
            return "All"
        default:
            return "Unknown"
        }
    }
}
