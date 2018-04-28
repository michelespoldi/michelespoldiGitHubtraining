//
//  MathBoolOpTests.swift
//  MathBoolOpTests
//
//  Created by Jim Campagno on 1/11/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import XCTest
@testable import MathBoolOp

class MathBoolOpTests: XCTestCase {
    
    let test = MathMethods()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // #1
    func testAdd() {
        let result = test.add(a: 5, b: 5)
        let result2 = test.add(a: 0, b: -3)
        XCTAssertEqual(result, 10, "5 + 5 is equal to 10.")
        XCTAssertEqual(result2, -3, "0 + -3 is equal to -3.")
    }
    
    // #2
    func testAddWithIntAndDouble() {
        let result = test.add(a: 5, b: 25.5)
        let result2 = test.add(a: 1, b: 99.9)
        XCTAssertEqual(result, 30, "25.5 + 5 when 25.5 is converted to an Int should equal 30.")
        XCTAssertEqual(result2, 100, "1 + 99.9 when 99.9 is converted to an Int should equal 100.")
    }
    
    // #3
    func testIsEqual() {
        let resultTrue = test.isEqual(a: 5, b: 5)
        let resultFalse = test.isEqual(a: 13, b: 22)
        XCTAssertTrue(resultTrue, "5 is equal to 5, this should return true.")
        XCTAssertFalse(resultFalse, "13 is not equal to 22, this should return false.")
    }
    
    // #4
    func testIsEqualDouble() {
        let resultTrue = test.isEqual(a: 2.5, b: 2.5)
        let resultFalse = test.isEqual(a: 1.2, b: 1.5)
        XCTAssertTrue(resultTrue, "2.5 is equal to 2.5, this should return true.")
        XCTAssertFalse(resultFalse, "1.2 is not equal to 1.5, this should return false.")
    }
    
//    // #5
//    func testQuestionFive() -> String {
//        let result = test.questionFive()
//        XCTAssertEqual(result, "d", "You can only compare equality of two values that are of the same type. You can convert one type to be of the same type as the other and then make a comparison.")
//    }
    
    // #6
    func testCompare() {
        let resultFalse = test.compare(a: 10, b: 5)
        XCTAssertFalse(resultFalse, "10 is NOT less than 5. 10 is also not greater or equal to 100, this should return false.")
        
        let resultTrue100 = test.compare(a: 100, b: 88)
        XCTAssertTrue(resultTrue100, "a is equal to 100, this should return true.")
        
        let resultALessThanB = test.compare(a: 5, b: 95)
        XCTAssertTrue(resultALessThanB, "a is less than b. 5 is less than 95, this should return back true.")
    }
    
    // #7
    func testAverage() {
        let result = test.average(a: 1, b: 5, c: 10)
        let result2 = test.average(a: 2, b: 40, c: 10)
        let result3 = test.average(a: 10, b: 10, c: 10)
        XCTAssertEqual(result, 5, "The average of 1, 5, and 10 is 5 (when rounded because of being an Int).")
        XCTAssertEqual(result2, 17, "The average of 2, 40, and 10 is 17 (when rounded because of being an Int).")
        XCTAssertEqual(result3, 10, "The average of 10, 10, and 10 is 10.")
    }
    
}
