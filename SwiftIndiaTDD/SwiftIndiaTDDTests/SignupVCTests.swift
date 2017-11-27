//
//  SignupVCTests.swift
//  SwiftIndiaTDDTests
//
//  Created by Susmita Horrow on 27/11/17.
//  Copyright © 2017 hsusmita. All rights reserved.
//

import XCTest
@testable import SwiftIndiaTDD

class SignupVCTests: XCTestCase {
	var sut: SignupViewController!

    override func setUp() {
        super.setUp()
		let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		sut = storyboard.instantiateViewController(withIdentifier: "SingupVC") as! SignupViewController
		_ = sut.view
    }

	func test_initialSetup() {
		XCTAssertNotNil(sut.usernameTextField)
		XCTAssertNotNil(sut.passwordTextField)
		XCTAssertNotNil(sut.confirmPasswordTextField)
	}
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
