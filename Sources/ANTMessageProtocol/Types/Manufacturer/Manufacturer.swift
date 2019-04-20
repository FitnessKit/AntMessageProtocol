//
//  Manufacturer.swift
//  ANTMessageProtocol
//
//  Created by Kevin Hoogheem on 8/6/17.
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

internal var allManufacturers: [Manufacturer] = [Manufacturer]()

/// ANT Manufacturer
@available(swift 4.0)
open class Manufacturer {

    /// Manufacturer ID
    open internal(set) var manufacturerID: UInt16

    /// Company Name
    open internal(set) var name: String

    public init(id: UInt16, name: String) {

        self.manufacturerID = id
        self.name = name
    }

}

@available(swift 4.0)
extension Manufacturer: Encodable {

    enum CodingKeys: String, CodingKey {
        case manufacturerID = "id"
        case name           = "name"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(manufacturerID, forKey: .manufacturerID)
        try container.encode(name, forKey: .name)
    }

}


extension Manufacturer: Hashable {

    /// Hashes the essential components of this value by feeding them into the
    /// given hasher.
    ///
    /// Implement this method to conform to the `Hashable` protocol. The
    /// components used for hashing must be the same as the components compared
    /// in your type's `==` operator implementation. Call `hasher.combine(_:)`
    /// with each of these components.
    ///
    /// - Important: Never call `finalize()` on `hasher`. Doing so may become a
    ///   compile-time error in the future.
    ///
    /// - Parameter hasher: The hasher to use when combining the components
    ///   of this instance.
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(manufacturerID)
    }
}

extension Manufacturer: Equatable {

    static public func == (lhs: Manufacturer, rhs: Manufacturer) -> Bool {
        return (lhs.name == rhs.name) && (lhs.manufacturerID == rhs.manufacturerID)
    }
}

@available(swift 4.0)
public extension Manufacturer {

    /// Registers a Manufacturer
    ///
    ///  Allows adding a Manufacturer to the system
    ///
    /// - Parameter company: Manufacturer Object
    /// - Throws: FitError
    class func register(_ company: Manufacturer) throws {

        /// check by the ID... as they may name it differently...
        let id = Manufacturer.supportedManufacturers.first { (compObj) -> Bool in
            if compObj.manufacturerID == company.manufacturerID {
                return true
            }

            return false
        }

        if let _ = id {
            throw ANTMessageProtocolError.init(.manufactuerRegistration("Manufacturer already registered"))
        }

        if Manufacturer.supportedManufacturers.contains(company) == false {
            allManufacturers.append(company)
        }
    }

    /// Finds a Manufacturer by the ID
    ///
    /// - Parameter id: Company Identifier per ANT
    /// - Returns: Manufacturer Instance
    class func company(id: UInt16) -> Manufacturer? {

        let id = Manufacturer.supportedManufacturers.first { (compObj) -> Bool in
            if compObj.manufacturerID == id {
                return true
            }

            return false
        }

        return id
    }
}
