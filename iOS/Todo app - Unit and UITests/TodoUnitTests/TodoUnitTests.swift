//
//  TodoUnitTests.swift
//  TodoUnitTests
//
//  Created by Michele Spoldi on 22/04/2018.
//  Copyright © 2018 YiGu. All rights reserved.
//

import XCTest
@testable import Todo

class TodoUnitTests: XCTestCase {
    
    func testHelloWorldUnitTest() {
        var helloWorld: String?
        //sprawdzamy, iż nasza zmianna helloworld jest na chwilę obecną NIL
        XCTAssertNil(helloWorld)
        
        //teraz dajemy wartość naszemu helloworld
        helloWorld = "hello world"
        //Asercją sprawdzamy, czy nasza zmianna hellow world ma oczekiwaną wartość
        XCTAssertEqual(helloWorld, "hello world")
        //negative scenario, aby sprawdzic czy nasza asercja działa
        //XCTAssertEqual(helloWorld, "hello world2")
    }
    
    func testCountLogic() {
        let value = 3
        let squaredValue = value.square()
        XCTAssertEqual(squaredValue, 9)
        //incorrect example
        //modify the source code in ViewController file, self*self*self
    }
    
}
