//
//  CodingExerciseTests.swift
//  CodingExerciseTests
//
//  Created by Tej on 10/08/19.
//  Copyright © 2019 Tej. All rights reserved.
//

import XCTest
@testable import CodingExercise

class CodingExerciseTests: XCTestCase {
    let wsManager = WebServiceManager.manager
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWebService() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let promise = expectation(description: "Proper data from server")
        
        WebServiceManager.manager.fetchQuestions { (questions, error) in
            if let err = error {
                XCTFail("Failed to fetch data from server: " + err.localizedDescription)
                return
            } else if questions != nil {
                promise.fulfill()
            }
        }
        
        wait(for: [promise], timeout: 5)
    }
}
