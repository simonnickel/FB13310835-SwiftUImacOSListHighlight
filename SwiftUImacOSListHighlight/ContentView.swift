//
//  ContentView.swift
//  SwiftUImacOSListHighlight
//
//  Created by Simon Nickel on 29.10.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selected: Int? = nil
	
    var body: some View {
		
		List(selection: $selected) {
			ForEach(0..<4) { index in
				HStack {
					Image(systemName: "circle.fill")
						.foregroundColor(.blue)
					Text("Test")
						.foregroundStyle(selected == index ? Color.black : Color.white)
				}
				.tag(index)
			}
		}
		.environment(\.colorScheme, .dark)
		
    }
}

#Preview {
    ContentView()
}
