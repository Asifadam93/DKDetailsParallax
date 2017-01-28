//
//  SwitchTests.swift
//  SwitchTests
//
//  Created by Thanh Pham on 9/9/16.
//  Copyright © 2016 TPM. All rights reserved.
//

import XCTest
@testable import DKDetailsParallax

class SwitchTests: XCTestCase {

    var theSwitch: Switch!

    override func setUp() {
        super.setUp()
        theSwitch = Switch()
    }

    override func tearDown() {
        theSwitch = nil
        super.tearDown()
    }

    func testLeftText() {
        let text = "left"
        theSwitch.leftText = text
        XCTAssertEqual(theSwitch.leftLabel.text, text)
        XCTAssertEqual(theSwitch.leftText, text)
    }

    func testRightText() {
        let text = "right"
        theSwitch.rightText = text
        XCTAssertEqual(theSwitch.rightLabel.text, text)
        XCTAssertEqual(theSwitch.rightText, text)
    }
    
    func testRightSelect() {
        theSwitch.rightSelected = true
        XCTAssert(theSwitch.rightSelected)
    }

    func testDisabledColor() {
        let color = UIColor.cyan
        theSwitch.disabledColor = color
        XCTAssertEqual(theSwitch.backgroundLayer.borderColor, color.cgColor)
        XCTAssertEqual(theSwitch.rightLabel.textColor, color)
    }

    func testTintColor() {
        let color = UIColor.purple
        theSwitch.tintColor = color
        XCTAssertEqual(theSwitch.switchLayer.borderColor, color.cgColor)
        XCTAssertEqual(theSwitch.leftLabel.textColor, color)
    }

    func testBackColor() {
        let color = UIColor.brown
        theSwitch.backColor = color
        XCTAssertEqual(theSwitch.backgroundLayer.backgroundColor, color.cgColor)
    }
}
