//
//  FormFieldTests.swift
//  SwiftIndiaTDDTests
//
//  Created by Susmita Horrow on 21/11/17.
//  Copyright © 2017 hsusmita. All rights reserved.
//

import XCTest
@testable import SwiftIndiaTDD

/* This contains the unit test for FormField. A FormField is hold some value and applies a validator function to check if the value in the formfield is valid or not.
*/

class FormFieldTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

	func test_FormField_Validate() {
		let validatingFunction: (String) -> Bool = { string in
			return string.characters.count > 5
		}
		let formField = FormField(value: "abc", validator: validatingFunction)
	}

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
