//
//  GenericCommand.swift
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


public enum GenericCommand {
    case noCommand
    case value(_: UInt16)

    public var rawvalue: UInt16 {
        switch self {
        case .noCommand:
            return UInt16.max
        case .value(let num):
            return num
        }
    }

    internal static func create(_ value: UInt16) -> GenericCommand {
        if value == UInt16.max {
            return GenericCommand.noCommand
        } else {
            return GenericCommand.value(value)
        }
    }
}


// MARK: - ANT Specific Commands
public extension GenericCommand {

    /// Move up to the previous menu item in the list (same hierarchy level)
    static var menuUp: GenericCommand {
        return .value(0)
    }

    /// Move down to the next menu item in the list (same hierarchy level)
    static var menuDown: GenericCommand {
        return .value(1)
    }

    /// Select the current menu item, i.e. initiate listed function, or move into sub menu
    static var menuSelect: GenericCommand {
        return .value(2)
    }

    /// Move up one level in the menu hierarchy
    static var menuBack: GenericCommand {
        return .value(3)
    }

    /// Return to the home screen
    static var home: GenericCommand {
        return .value(4)
    }

    /// Start the timer counting from the existing value
    static var start: GenericCommand {
        return .value(32)
    }

    /// Stop the timer counting
    static var stop: GenericCommand {
        return .value(33)
    }

    /// Reset the timer value to zero
    static var reset: GenericCommand {
        return .value(34)
    }

    /// Mark the time as a completed length
    static var length: GenericCommand {
        return .value(35)
    }

    /// Mark the time as a completed lap
    static var lap: GenericCommand {
        return .value(36)
    }
}
