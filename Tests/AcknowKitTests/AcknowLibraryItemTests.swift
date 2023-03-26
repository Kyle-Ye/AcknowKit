//
//  AcknowLibraryItemTests.swift
//  
//
//  Created by Kyle on 2023/3/26.
//

import XCTest
@testable import AcknowKit

final class AcknowLibraryItemTests: XCTestCase {
    func testIdentifiable() throws {
        let item1 = AcknowLibrary.Item(title: "Demo", author: "A")
        let item2 = AcknowLibrary.Item(title: "Demo", author: "B")
        XCTAssertNotEqual(item1.id, item2.id)
    }
}
