//
//  AcknowLibraryItem.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import Foundation

extension AcknowLibrary {
    public struct Item {
        public init(title: String, text: String? = nil, author: String? = nil, license: License? = nil, reposity: URL? = nil) {
            self.title = title
            self.text = text
            self.author = author
            self.license = license
            self.reposity = reposity
        }

        /// The name of the library
        public let title: String

        /// The license content of the library
        public let text: String?

        /// The name of the library's author
        public let author: String?

        /// The license type of the library
        public let license: License?

        /// The reposity URL of the library's source code
        public let reposity: URL?
    }
}

extension AcknowLibrary.Item: Hashable {}

extension AcknowLibrary.Item: Identifiable {
    public var id: String { title }
    public var id: Int { hashValue }
}
