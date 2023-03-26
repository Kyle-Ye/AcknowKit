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
        #if !os(macOS)
        .navigationBarTitle("Acknowledgements")
        #endif
    }
}

struct AcknowLibraryList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AcknowLibraryList(library: .preview)
        }
    }
}