//
//  AcknowLibraryItem+Preview.swift
//
//
//  Created by Kyle on 2023/3/26.
//

import Foundation

extension AcknowLibrary.Item {
    static let text = """
    MIT License

    Copyright (c) 2023 Kyle-Ye

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE
    """

    static let itemComplete = AcknowLibrary.Item(title: "AcknowKit-Full", text: text, author: "Kyle-Ye", license: .mit, reposity: URL(string: "https://github.com/Kyle-Ye/AcknowKit"))
    static let itemEmpty = AcknowLibrary.Item(title: "AcknowKit-Empty")
    static let itemText = AcknowLibrary.Item(title: "AcknowKit-OnlyText", text: text)
    static let itemAuthor = AcknowLibrary.Item(title: "AcknowKit-OnlyAuthor", author: "Kyle-Ye")
    static let itemLicense = AcknowLibrary.Item(title: "AcknowKit-OnlyLicense", license: .mit)
    static let itemReposity = AcknowLibrary.Item(title: "AcknowKit-OnlyReposity", reposity: URL(string: "https://github.com/Kyle-Ye/AcknowKit"))
}

extension [AcknowLibrary.Item] {
    static let preview: [AcknowLibrary.Item] = [
        .itemComplete,
        .itemText,
        .itemAuthor,
        .itemLicense,
        .itemReposity,
    ]
}
