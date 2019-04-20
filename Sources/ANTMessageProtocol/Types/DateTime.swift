//
//  DateTime.swift
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

/// Day of Week
public enum DayOfWeek: UInt8 {
    /// Sunday
    case sunday     = 0
    /// Monday
    case monday     = 1
    /// Tuesday
    case tuesday    = 2
    /// Wednesday
    case wednesday  = 3
    /// Thursday
    case thursday   = 4
    /// Friday
    case friday     = 5
    /// Saturday
    case saturday   = 6
    /// Invalid
    case invalid    = 7
}

public extension DayOfWeek {

    /// Day of Week string value
    var stringValue: String {
        switch self {
        case .sunday:
            return "Sunday"
        case .monday:
            return "Monday"
        case .tuesday:
            return "Tuesday"
        case .wednesday:
            return "Wednesday"
        case .thursday:
            return "Thursday"
        case .friday:
            return "Friday"
        case .saturday:
            return "Saturday"
        case .invalid:
            return "Invalid"
        }
    }
}

/// Month
public enum Month: UInt8 {
    /// January
    case january        = 1
    /// February
    case february       = 2
    /// March
    case march          = 3
    /// April
    case april          = 4
    /// May
    case may            = 5
    /// June
    case june           = 6
    /// July
    case july           = 7
    /// August
    case august         = 8
    /// September
    case september      = 9
    /// October
    case october        = 10
    /// November
    case november       = 11
    /// December
    case december       = 12
}

/// ANT Day
public struct AntDay {

    /// Weekday
    public let weekday: DayOfWeek

    /// Day of Month
    public let dayOfMonth: UInt8

    /// UInt8 Value
    public var uint8Value: UInt8 {
        var value: UInt8 = dayOfMonth
        value |= UInt8(weekday.rawValue) << 5

        return UInt8(value)
    }

    public init(_ value: UInt8) {
        self.dayOfMonth = (value & 0x1F)
        self.weekday = DayOfWeek(rawValue: ((value & 0xE0) >> 5)) ?? .invalid
    }


    public init(weekday: DayOfWeek, dayOfMonth: UInt8) {
        self.weekday = weekday
        self.dayOfMonth = dayOfMonth
    }
}

/// Time Date
public struct TimeDate {
    fileprivate var _year: UInt8 = 0

    /// Seconds
    public let seconds: UInt8

    /// Minutes
    public let minutes: UInt8

    /// Houra
    public let hours: UInt8

    /// Day
    public let day: AntDay

    /// Month
    public let month: Month

    fileprivate(set) public var year: UInt16 {
        get {
            return UInt16(_year) + 2000
        }
        set {
            _year = UInt8(newValue - 2000)
        }
    }

    public init(seconds: UInt8, minutes: UInt8, hour: UInt8, day: AntDay, month: Month, year: UInt16) {
        self.seconds = seconds
        self.minutes = minutes
        self.hours = hour
        self.day = day
        self.month = month

        var newYear = year
        if newYear <= 255 {
            newYear = year + 2000
        }
        self.year = min(max(newYear, 2000), 2255)
    }
    
}

extension TimeDate: Encodeable {

    public var encodedData: Data {

        var encode = Data()
        encode.append(seconds)
        encode.append(minutes)
        encode.append(hours)
        encode.append(day.uint8Value)
        encode.append(month.rawValue)
        encode.append(_year)
        return encode
    }
}

