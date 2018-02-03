//
//  DataTypes.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 3/18/17.
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


public enum AntInvalidUInt8 {
    case invalid
    case value(_: UInt8)

    public var rawValue: UInt8 {
        switch self {
        case .invalid:
            return UInt8.max
        case .value(let num):
            return num
        }
    }

    public static func create(_ value: UInt8) -> AntInvalidUInt8 {
        if value == UInt8.max {
            return AntInvalidUInt8.invalid
        } else {
            return AntInvalidUInt8.value(value)
        }
    }
}

public enum AntInvalidUInt16 {
    case invalid
    case value(_: UInt16)

    public var rawValue: UInt16 {
        switch self {
        case .invalid:
            return UInt16.max
        case .value(let num):
            return num
        }
    }

    public static func create(_ value: UInt16) -> AntInvalidUInt16 {
        if value == UInt16.max {
            return AntInvalidUInt16.invalid
        } else {
            return AntInvalidUInt16.value(value)
        }
    }
}

public enum AntInvalidUInt32 {
    case invalid
    case value(_: UInt32)

    public var rawValue: UInt32 {
        switch self {
        case .invalid:
            return UInt32.max
        case .value(let num):
            return num
        }
    }

    public static func create(_ value: UInt32) -> AntInvalidUInt32 {
        if value == UInt32.max {
            return AntInvalidUInt32.invalid
        } else {
            return AntInvalidUInt32.value(value)
        }
    }
}

