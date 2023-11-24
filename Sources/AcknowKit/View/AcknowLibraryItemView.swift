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

    @Environment(\.openURL) private var openURL

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
        .toolbar {
            if let repository = item.repository,
               canOpenRepository(for: repository) {
                ToolbarItem(id: "open-link", placement: .primaryAction) {
                    Button {
                        openURL(repository)
                    } label: {
                        Label("Open RepoLink", systemImage: "link")
                    }
                }
            }
        }
        .navigationTitle(item.title)
    }

    private func canOpenRepository(for url: URL) -> Bool {
        guard let scheme = url.scheme else {
            return false
        }
        return scheme == "http" || scheme == "https"
    }
}

#Preview("Complete") {
    NavigationStack {
        AcknowLibraryItemView(item: .itemComplete)
    }
}

#Preview("Empty") {
    NavigationStack {
        AcknowLibraryItemView(item: .itemEmpty)
    }
}

#Preview("Demo") {
    NavigationStack {
        AcknowLibraryItemView(item: .init(title: "Demo", text: "Demo Content"))
    }
}
