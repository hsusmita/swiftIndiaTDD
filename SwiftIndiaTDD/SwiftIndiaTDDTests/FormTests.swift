//
//  FormTests.swift
//  SwiftIndiaTDDTests
//
//  Created by Susmita Horrow on 22/11/17.
//  Copyright © 2017 hsusmita. All rights reserved.
//

import XCTest
@testable import SwiftIndiaTDD

/* This contains the unit test for Form. A Form consist of a number of FormFields and a closure for validation.
*/

class FormTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
	func testFormInit() {
		let userFormField = FormField<String>(value: "", validator: { string in
			return !string.isEmpty
		})
		let passwordField = FormField<String>(value: "", validator: {  string in
			return string.characters.count > 5
		})
		let confirmPasswordField = FormField<String>(value: "", validator: {  string in
			return string.characters.count > 5
		})

		let dependencyValidator: () -> Bool = {
			return passwordField.value == confirmPasswordField.value
		}

		let form = Form(formFields: [userFormField, passwordField, confirmPasswordField], validator: dependencyValidator)

	}
}
