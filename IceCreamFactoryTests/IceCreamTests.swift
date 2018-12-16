//
//  IceCreamTests.swift
//  IceCreamFactoryTests
//
//  Created by Marlhex on 2018-12-16.
//  Copyright © 2018 Ignacio Arias. All rights reserved.
//

import XCTest

class IceCreamTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testInit_MapleIceCreamFlavourType_DoesNotReturnNil() {
        let iceCream = IceCream(.maple)
        XCTAssertNotNil(iceCream)
    }

    func testInit_LemonIceCreamFlavourType_DoesNotReturnNil() {
        let iceCream = IceCream(.lemon)
        XCTAssertNotNil(iceCream)
    }
    
    func testInit_CherryIceCreamFlavoursType_DoesNotReturnNil() {
        let iceCream = IceCream(.cherry)
        XCTAssertNotNil(iceCream)
    }

    func testInit_MapleIceCreamFlavourType_SetsIceCreamTypeIvarCorrectly() {
        let iceCream = IceCream(.maple)
        XCTAssertEqual(iceCream.type, .maple)
    }
    
    func testInit_LemonIceCreamFlavourType_SetsIceCreamTypeIvarCorrectly() {
        let iceCream = IceCream(.lemon)
        XCTAssertEqual(iceCream.type, .lemon)
    }
    
    func testInit_CherryIceCreamFlavourType_SetsIceCreamTypeIvarCorrectly() {
        let iceCream = IceCream(.cherry)
        XCTAssertEqual(iceCream.type, .cherry)
    }
    
}
