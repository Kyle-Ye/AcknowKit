//
//  AcknowLibraryList.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import SwiftUI

public struct AcknowLibraryList: View {
    public let library: AcknowLibrary

    public init(library: AcknowLibrary) {
        self.library = library
    }

    public var body: some View {
        List {
            AcknowLibrarySection(library: library)
        }
        .navigationTitle("Acknowledgements")
    }
}

#Preview {
    NavigationStack {
        AcknowLibraryList(library: .preview)
    }
}
