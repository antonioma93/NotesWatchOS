//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Massa Antonio on 30/08/21.
//

import Foundation

struct Note: Identifiable, Codable {
	let id: UUID
	let text: String
}
