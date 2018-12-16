//
//  IceCreamControllerTests.swift
//  IceCreamFactoryTests
//
//  Created by Marlhex on 2018-12-16.
//  Copyright © 2018 Ignacio Arias. All rights reserved.
//

import XCTest

class IceCreamControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: - Initializer tests
extension IceCreamControllerTests {
    
    func testInit_MapleIceCreamArray_IsNotNil() {
        let iceCreamJar = IceCreamController()
        XCTAssertNotNil(iceCreamJar.mapleFlavours)
    }
    
    func testInit_LemonIceCreamArray_IsNotNil() {
        let iceCreamJar = IceCreamController()
        XCTAssertNotNil(iceCreamJar.lemonFlavours)
    }
    
    func testInit_CherryIceCreamArray_IsNotNil() {
        let iceCreamJar = IceCreamController()
        XCTAssertNotNil(iceCreamJar.cherryFlavours)
    }
    
    func testInit_MapleIceCreamCount_IsZero() {
        let iceCreamJar = IceCreamController()
        XCTAssertEqual(iceCreamJar.mapleFlavours!.count, 0)
    }
    
    func testInit_LemonIceCreamCount_IsZero() {
        let iceCreamJar = IceCreamController()
        XCTAssertEqual(iceCreamJar.lemonFlavours!.count, 0)
    }
    
    func testInit_CherryIceCreamCount_IsZero() {
        let iceCreamJar = IceCreamController()
        XCTAssertEqual(iceCreamJar.cherryFlavours!.count, 0)
    }
}

// MARK: - addMapleIceCream tests
extension IceCreamControllerTests {
    
    func testAddMapleIceCream_Increments_NumberOfMapleIceCreams_ByOne() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.mapleFlavours!.count
        iceCreamJar.addMapleIceCreamFlavour()
        
        let expectedNumberOfIceCreams = numberOfIceCreams + 1
        XCTAssertEqual(iceCreamJar.mapleFlavours!.count, expectedNumberOfIceCreams)
    }
    
    func testAddMapleIceCream_DoesNotIncrement_NumberOfLemonIceCreams() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.lemonFlavours!.count
        iceCreamJar.addMapleIceCreamFlavour()
        
        XCTAssertEqual(iceCreamJar.lemonFlavours!.count, numberOfIceCreams)
    }
    
    func testAddMapleIceCream_DoesNotIncrement_NumberOfCherryIceCreams() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.cherryFlavours!.count
        iceCreamJar.addMapleIceCreamFlavour()
        
        XCTAssertEqual(iceCreamJar.cherryFlavours!.count, numberOfIceCreams)
    }
    
}

// MARK: - addLemonIceCream tests
extension IceCreamControllerTests {
    
    func testAddLemonIceCream_Increments_NumberOfLemonIceCreams_ByOne() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.lemonFlavours!.count
        iceCreamJar.addLemonIceCreamFlavour()
        
        let expectedNumberOfIceCreams = numberOfIceCreams + 1
        XCTAssertEqual(iceCreamJar.lemonFlavours!.count, expectedNumberOfIceCreams)
    }
    
    func testAddLemonIceCream_DoesNotIncrement_NumberOfMapleIceCreams() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.mapleFlavours!.count
        iceCreamJar.addLemonIceCreamFlavour()
        
        XCTAssertEqual(iceCreamJar.mapleFlavours!.count, numberOfIceCreams)
    }
    
    func testAddLemonIceCream_DoesNotIncrement_NumberOfCherryIceCreams() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.cherryFlavours!.count
        iceCreamJar.addLemonIceCreamFlavour()
        
        XCTAssertEqual(iceCreamJar.cherryFlavours!.count, numberOfIceCreams)
    }
    
}


// MARK: - addCherryIceCream tests
extension IceCreamControllerTests {
    
    func testAddCherryIceCream_Increments_NumberOfCherryIceCreams_ByOne() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.cherryFlavours!.count
        iceCreamJar.addCherryIceCreamFlavour()
        
        let expectedNumberOfIceCreams = numberOfIceCreams + 1
        XCTAssertEqual(iceCreamJar.cherryFlavours!.count, expectedNumberOfIceCreams)
    }
    
    func testAddCherryIceCream_DoesNotIncrement_NumberOfMapleIceCreams() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.mapleFlavours!.count
        iceCreamJar.addCherryIceCreamFlavour()
        
        XCTAssertEqual(iceCreamJar.mapleFlavours!.count, numberOfIceCreams)
    }
    
    func testAddCherryIceCream_DoesNotIncrement_NumberOfLemonIceCreams() {
        let iceCreamJar = IceCreamController()
        
        let numberOfIceCreams = iceCreamJar.lemonFlavours!.count
        iceCreamJar.addCherryIceCreamFlavour()
        
        XCTAssertEqual(iceCreamJar.lemonFlavours!.count, numberOfIceCreams)
    }
    
}


// MARK: - Reset tests
extension IceCreamControllerTests {
    
    func testReset_MapleIceCreamArray_WithZeroElements_RemainsEmpty() {
        let iceCreamJar = IceCreamController()
        iceCreamJar.reset()
        XCTAssertEqual(iceCreamJar.mapleFlavours!.count, 0)
    }
    
    func testReset_LemonIceCreamArray_WithZeroElements_RemainsEmpty() {
        let iceCreamJar = IceCreamController()
        iceCreamJar.reset()
        XCTAssertEqual(iceCreamJar.lemonFlavours!.count, 0)
    }
    
    func testReset_CherryIceCreamArray_WithZeroElements_RemainsEmpty() {
        let iceCreamJar = IceCreamController()
        iceCreamJar.reset()
        XCTAssertEqual(iceCreamJar.cherryFlavours!.count, 0)
    }
    
    
    func testReset_MapleIceCreamArray_WithElements_BecomesEmpty() {
        let iceCreamJar = IceCreamController()
        
        iceCreamJar.addMapleIceCreamFlavour()
        iceCreamJar.reset()
        
        XCTAssertEqual(iceCreamJar.mapleFlavours!.count, 0)
    }
    
    func testReset_LemonIceCreamArray_WithElements_BecomesEmpty() {
        let iceCreamJar = IceCreamController()
        
        iceCreamJar.addLemonIceCreamFlavour()
        iceCreamJar.reset()
        
        XCTAssertEqual(iceCreamJar.lemonFlavours!.count, 0)
    }
    
    func testReset_CherryIceCreamArray_WithElements_BecomesEmpty() {
        let iceCreamJar = IceCreamController()
        
        iceCreamJar.addCherryIceCreamFlavour()
        iceCreamJar.reset()
        
        XCTAssertEqual(iceCreamJar.cherryFlavours!.count, 0)
    }
}




























