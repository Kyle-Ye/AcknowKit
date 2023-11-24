//
//  License.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import Foundation

/// A type that represents an open source license type
public struct License: RawRepresentable, Hashable {
    public init(rawValue: String) {
        self.rawValue = rawValue
        self.description = nil
        self.link = nil
    }

    public init(rawValue: String, description: String? = nil, link: URL? = nil) {
        self.rawValue = rawValue
        self.description = description
        self.link = link
    }

    public let rawValue: String
    public let description: String?
    public let link: URL?
}

// MARK: - Common open source license type

extension License {
    /// MIT license
    public static let mit = License(rawValue: "MIT")

    /// BSD license
    public static let bsd = License(rawValue: "BSD")

    /// Apache license
    public static let apache = License(rawValue: "Apache")

    /// Apache 2.0 license
    public static let apache2 = License(rawValue: "Apache 2.0")

    /// Swift license - Apache License v2.0 with Runtime Library Exception
    public static let swift = License(
        rawValue: "Swift License",
        description: "Apache License v2.0 with Runtime Library Exception",
        link: URL(string: "https://raw.githubusercontent.com/apple/swift/main/LICENSE.txt")
    )

    /// GNU General Public License
    public static let gpl = License(rawValue: "GPL")
}
