//
//  License.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import Foundation

/// A type that represents an open source license type
public struct License: RawRepresentable {
    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public var rawValue: String
}

// MARK: - Common open source license type

extension License {
    /// MIT license
    public static let mit = License(rawValue: "MIT")

    /// BSD license
    public static let bsd = License(rawValue: "BSD")

    /// Apache license
    public static let apache = License(rawValue: "Apache")

    /// GNU General Public License
    public static let gpl = License(rawValue: "GPL")
}
