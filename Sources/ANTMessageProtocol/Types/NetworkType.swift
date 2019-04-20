//
//  NetworkType.swift
//  AntMessageProtocol
//
//  Created by Kevin Hoogheem on 2/4/18.
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

/// ANT Network Type
public enum NetworkType: UInt8 {
    /// ANT Public Network
    case `public`       = 0
    /// ANT+ Network
    case antPlus        = 1
    /// ANT-FS
    case antFs          = 2
    /// Private Network
    case `private`      = 3

    case invalid        = 255
}

public extension NetworkType {

    /// String Value for Network Type
    var stringValue: String {
        switch self {
        case .public:
            return "ANT Public"
        case .antPlus:
            return "ANT+"
        case .antFs:
            return "ANT-FS"
        case .private:
            return "ANT Private"
        default:
            return "Invalid"
        }
    }
}
