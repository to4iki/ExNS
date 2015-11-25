//
//  NSNumber+ExNSTests.swift
//  ExNSTests
//
//  Created by to4iki on 11/26/15.
//  Copyright © 2015 to4iki. All rights reserved.
//

import XCTest
@testable import ExNS

class NSNumberTests: XCTestCase {
    
    let n1 = NSNumber(int: 8)
    let n2 = NSNumber(int: 2)
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(n1 + n2, 10)
    }
    
    func testSubtract() {
        XCTAssertEqual(n1 - n2, 6)
    }
    
    func testMultiply() {
        XCTAssertEqual(n1 * n2, 16)
    }
    
    func testDivide() {
        XCTAssertEqual(n1 / n2, 4)
    }
    
    func testAddPerformanceWithMeasureBlock() {
        func calc() -> NSNumber {
            return (n1 + n1 - n2) * n2 / n2
        }
        
        self.measureBlock {
            calc()
        }
    }
}
