//
//  PickerKitTests.swift
//  PickerKitTests
//
//  Created by Alexandru Turcanu on 31 May 2019.
//  Copyright © 2019 PickerKit. All rights reserved.
//

@testable import PickerKit
import XCTest

class PickerKitTests: XCTestCase {
    
    static var allTests = [
        ("testExample", testExample),
    ]
    
    func testExample() {
        let colors = [UIColor.red, UIColor.blue, UIColor.purple, UIColor.orange,
                      UIColor.green, UIColor.red, UIColor.blue, UIColor.purple,
                      UIColor.orange, UIColor.green]

        let picker = PickerView(colorEntries: colors)

        XCTAssertEqual(
            picker.colorEntries,
            colors
        )
    }
}
