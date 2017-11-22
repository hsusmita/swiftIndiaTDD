//
//  FormField.swift
//  SwiftIndiaTDD
//
//  Created by Susmita Horrow on 22/11/17.
//  Copyright © 2017 hsusmita. All rights reserved.
//

import Foundation

class FormField<T> {
	var value: T
	let validator: (T) -> Bool

	init(value: T, validator: @escaping (T) -> Bool ) {
		self.value = value
		self.validator = validator
	}

	func isValid() -> Bool {
		return self.validator(self.value)
	}
}
