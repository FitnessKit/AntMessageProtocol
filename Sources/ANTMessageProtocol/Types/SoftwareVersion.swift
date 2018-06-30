//
//  SoftwareVersion.swift
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

/// ANT Software Version
public struct SoftwareVersion {

    fileprivate(set) public var supplemental: AntInvalidUInt8

    fileprivate(set) public var main: UInt8

    public var version: String {

        switch supplemental {
        case .invalid:
            let version = Float(main) / 10.0
            return "\(version)"

        case .value(let num):
            let version = ((Float(main) * 100.0) + Float(num)) / 1000.0
            return "\(version)"
        }
    }

    public init(main: UInt8, supplemental: AntInvalidUInt8) {
        self.main = main
        self.supplemental = supplemental
    }
    
}

extension SoftwareVersion: Encodeable {

    public var encodedData: Data {

        var encode = Data()
        encode.append(supplemental.rawValue)
        encode.append(main)
        return encode
    }

}
