//
//  PetrovichModTests.swift
//  Petrovich-demo
//
//  Created by Daniyar Salakhutdinov on 08.02.17.
//  Copyright © 2017 Runtime LLC. All rights reserved.
//

import XCTest
import Nimble
@testable import Petrovich_demo

class PetrovichModTests: XCTestCase {
    
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEmptyModReturnsValueItself() {
        let mod = Petrovich.Mod(letters: 0, value: "")
        expect(mod.apply("Value")).to(equal("Value"))
    }
    
    func testOneLetterAndNoReplacingValue() {
        let mod = Petrovich.Mod(letters: 1, value: "")
        expect(mod.apply("Value")).to(equal("Valu"))
    }
}
