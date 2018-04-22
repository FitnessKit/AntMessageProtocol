//
//  TransmissionType.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 4/22/18.
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
import DataDecoder

/// ANT Transmission Type
public struct TransmissionType {

    /// Transmission types
    public enum Transmission: UInt8 {
        /// Pairing
        case pairing                        = 0
        /// Independent Channel
        case independentChannel             = 1
        /// Shared Channl 1 Byte Addressing
        case sharedChannelOneByteAddress    = 2
        /// Shared Channel 2 Byte Addressing
        case sharedChannelTwoByteAddress    = 3
        /// Supports Common Pages ANT+
        case commonPages                    = 5
        /// Shared
        case shared                         = 6
        //Special Case for Wahoo Kicker
        case kicker                         = 165

        /// Invalid
        case invalid                        = 255
    }

    /// Raw Value
    private(set) public var rawValue: UInt8

    /// ANT Trans type
    private(set) public var trans: Transmission

    public init(_ rawValue: UInt8) {
        self.rawValue = rawValue

        let nib = Nibble(rawValue)

        if rawValue == Transmission.kicker.rawValue {
            trans = .kicker
        } else {
            trans = Transmission(rawValue: nib.lower) ?? .invalid
        }

    }
}

extension TransmissionType: Equatable {
    public static func ==(lhs: TransmissionType, rhs: TransmissionType) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}

extension TransmissionType: Hashable {
    public var hashValue: Int {
        return rawValue.hashValue
    }
}
