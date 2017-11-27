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
		sut = storyboard.instantiateViewController(withIdentifier: "SignupVC") as! SignupViewController
		_ = sut.view
    }

	func test_initialSetup() {
		XCTAssertNotNil(sut.usernameTextField)
		XCTAssertNotNil(sut.passwordTextField)
		XCTAssertNotNil(sut.confirmPasswordTextField)
		XCTAssertNotNil(sut.signupModel)
	}

	func test_textField_delegate() {
		XCTAssertNotNil(sut.usernameTextField.delegate)
		XCTAssertNotNil(sut.passwordTextField.delegate)
		XCTAssertNotNil(sut.confirmPasswordTextField.delegate)
	}

	func test_usernameTextField_textChange() {
		sut.usernameTextField.text = "hello"
		sut.usernameTextField.sendActions(for: .editingChanged)
		XCTAssertEqual(sut.usernameTextField.text, sut.signupModel.usernameField.value)
	}

	func test_passwordTextField_textChange() {
		sut.passwordTextField.text = "helloworld"
		sut.passwordTextField.sendActions(for: .editingChanged)
		XCTAssertEqual(sut.passwordTextField.text, sut.signupModel.passwordField.value)
	}

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
