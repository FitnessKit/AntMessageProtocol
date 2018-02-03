//
//  Errors.swift
//  ANTMessageProtocol
//
//  Created by Kevin Hoogheem on 3/28/17.
//
//

import Foundation

public enum ErrorReasons {

    case unsupportedMessage

    /// Manufactuer Registration
    case manufactuerRegistration(String)

    ///
    ///  Page Data
    ///
    case invalidPageNumber
    case encodeError(msg: String)
    case decodeError(msg: String)

    ///
    /// Message
    ///
//    case invalidANTMessageDecode(msgType: ANTMessageType, expectedType: ANTMessageType)
//    case invalidANTMessageSize(msgType: ANTMessageType, size: Int)
    case invalidChannelMessageType(type: UInt8)
    case invalidChannelMessageCode(type: UInt8)
    case invalidChannelType(type: UInt8)

    //Generic
    case generic(String)
}

public struct ANTMessageProtocolError: Error {

    public let type: ErrorReasons

    public init(_ type: ErrorReasons) {
        self.type = type
    }

    public init(message: String) {
        self.type = .generic(message)
    }
}
