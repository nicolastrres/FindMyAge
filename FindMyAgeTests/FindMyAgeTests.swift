//
//  FindMyAgeTests.swift
//  FindMyAgeTests
//
//  Created by Nicolas Agustin on 15/03/18.
//  Copyright © 2018 Nicolas Agustin. All rights reserved.
//

import XCTest
@testable import FindMyAge

class FindMyAgeTests: XCTestCase {
    
    var controller:ViewController?
    override func setUp() {
        super.setUp()
        controller = ViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    

    func testCaculateAge() {
        XCTAssertEqual(28, controller!.calculateAge(birthdate: 1990, currentYear: 2018))
        XCTAssertEqual(17, controller!.calculateAge(birthdate: 2001, currentYear: 2018))
    }
    
}
