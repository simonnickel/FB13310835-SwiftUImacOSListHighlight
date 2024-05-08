//
//  ContentView.swift
//  SwiftUImacOSListHighlight
//
//  Created by Simon Nickel on 29.10.23.
//

import SwiftUI

struct ContentViewResponse: View {
	@State private var selected: Int? = nil
    var body: some View {
		List(selection: $selected) {
			ForEach(0..<4) { index in
				HStack {
					Image(systemName: "circle.fill")
						.foregroundColor(.blue)
					Text("Test")
						.foregroundStyle(TextForegroundStyle())
				}
				.tag(index)
			}
		}
		.environment(\.colorScheme, .dark)
    }
}

struct TextForegroundStyle: ShapeStyle {
    func resolve(in env: EnvironmentValues) -> some ShapeStyle {
        switch env.backgroundProminence {
        case .increased: return AnyShapeStyle(.black)
        default: return AnyShapeStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
