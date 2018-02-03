//
//  ComponentIdentifier.swift
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

/// Identifies the component in the system to which this
/// Manufacturer’s Information pertains and specifies how
/// many separate components are available in the system.
public struct ComponentIdentifier {

    /// Number of Components max of 15
    fileprivate(set) public var count: UInt8

    /// Component Identifier
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
