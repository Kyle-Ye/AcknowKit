//
//  AcknowLibraryView.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import SwiftUI

public struct AcknowLibraryView: View {
    public let library: AcknowLibrary

    public init(library: AcknowLibrary) {
        self.library = library
    }

    public var body: some View {
        List {
            Section {
                ForEach(library.items) { item in
                    RowItem(item: item)
                }
            } header: {
                if let header = library.header {
                    Text(header)
                }
            } footer: {
                if let footer = library.footer {
                    Text(footer)
                }
            }
            #if !os(macOS)
            .navigationBarTitle("Acknowledgements")
            #endif
        }
    }
    
    /// View that displays a row in a list of acknowledgements.
    public struct RowItem: View {
        public let item: AcknowLibrary.Item

        public var body: some View {
            if let _ = item.text {
                NavigationLink {
                    AcknowLibraryItemView(item: item)
                } label: {
                    label
                }
            } else if let repository = item.reposity,
                      canOpenRepository(for: repository) {
                Button {
                    UIApplication.shared.open(repository)
                } label: {
                    HStack {
                        label.foregroundColor(.primary)
                        Spacer()
                        Image(systemName: "link")
                    }
                }
            } else {
                label
            }
        }
        
        private var label: some View {
            VStack(alignment: .leading) {
                Text(item.title)
                HStack {
                    if let author = item.author {
                        Text("Author: " + author)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    if let license = item.license {
                        Text("License: " + license.rawValue)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }

        private func canOpenRepository(for url: URL) -> Bool {
            guard let scheme = url.scheme else {
                return false
            }
            return scheme == "http" || scheme == "https"
        }
    }
}

struct AcknowLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AcknowLibraryView(library: .preview)
        }
    }
}


struct AcknowLibraryView_RowItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            List {
                AcknowLibraryView.RowItem(item: .init(title: "Demo", text: "License Content", author: "Kyle-Ye", license: .mit))
                AcknowLibraryView.RowItem(item: .init(title: "Demo", text: "License Content", author: "Kyle-Ye"))
                AcknowLibraryView.RowItem(item: .init(title: "Demo", text: "License Content", license: .apache))
                AcknowLibraryView.RowItem(item: .init(title: "Demo", reposity: URL(string: "https://github.com/Kyle-Ye/AcknowKit")))
                AcknowLibraryView.RowItem(item: .init(title: "Demo", reposity: URL(string: "git@github.com:Kyle-Ye/AcknowKit.git")))
            }
        }
    }
}
