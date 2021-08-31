//
//  Settings.swift
//  Notes WatchKit Extension
//
//  Created by Massa Antonio on 31/08/21.
//

import SwiftUI

struct SettingView: View {
	@AppStorage("lineCount") var lineCount: Int = 1
	@State private var value: Float = 1.0

	//MARK: - FUNCTION
	func update() {
		lineCount = Int(value)
	}

    var body: some View {
		VStack(spacing: 8) {
			//HEADER
			HeaderView(title: "Settings")

			//ACTUAL LINE COUNT
			Text("Lines \(lineCount)".uppercased())
				.fontWeight(.bold)

			//SLIDER
			Slider(value: Binding(get: {self.value}, set: {(newValue) in
				self.value = newValue
				self.update()
			}), in: 1...4, step: 1)
				.accentColor(.yellow)
		}
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
