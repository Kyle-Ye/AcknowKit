//
//  AcknowLibraryItem.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import SwiftUI

/// An acknowledgements library with an array of `AcknowLibraryItem` with optional header and footer texts.
public struct AcknowLibrary {
    public init(items: [Item], header: LocalizedStringKey? = nil, footer: LocalizedStringKey? = nil) {
        self.items = items
        self.header = header
        self.footer = footer
    }

    /// An array of `Item`
    public var items: [Item]

    /// Header text to be displayed above the list of the acknowledgements.
    public let header: LocalizedStringKey?

    /// Footer text to be displayed bolow the list of the acknowledgements.
    public let footer: LocalizedStringKey?
}

extension AcknowLibrary {
    public static func + (lhs: AcknowLibrary, rhs: AcknowLibrary) -> AcknowLibrary {
        AcknowLibrary(
            items: lhs.items + rhs.items,
            header: lhs.header ?? rhs.header,
            footer: lhs.footer ?? rhs.footer
        )
    }
}
