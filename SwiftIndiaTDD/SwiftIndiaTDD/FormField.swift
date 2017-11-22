//
//  FormField.swift
//  SwiftIndiaTDD
//
//  Created by Susmita Horrow on 22/11/17.
//  Copyright © 2017 hsusmita. All rights reserved.
//

import Foundation

class FormField {
	var value: String
	let validator: (String) -> Bool

	init(value: String, validator: @escaping (String) -> Bool ) {
		self.value = value
		self.validator = validator
	}
}
