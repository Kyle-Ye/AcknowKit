//
//  AcknowLibraryItemView.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import SwiftUI

/// View that displays a single acknowledgement.
public struct AcknowLibraryItemView: View {
    /// The acknowledgement item
    public var item: AcknowLibrary.Item

    public init(item: AcknowLibrary.Item) {
        self.item = item
    }

    public var body: some View {
        ScrollView {
            #if os(macOS)
            Text(item.title)
                .font(.title)
                .padding()
            #endif
            if let text = item.text {
                Text(text)
                    .font(.body)
                    .padding()
                    #if os(macOS)
                    .copyable([text])
                    #endif
            }
        }
        #if !os(macOS)
        .navigationBarTitle(item.title)
        #endif
    }
}

struct AcknowLibraryItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AcknowLibraryItemView(item: .itemComplete)
        }
        NavigationStack {
            AcknowLibraryItemView(item: .itemEmpty)
        }
        
        NavigationStack {
            AcknowLibraryItemView(item: .init(title: "Demo", text: "Demo Content"))
        }
    }
}
