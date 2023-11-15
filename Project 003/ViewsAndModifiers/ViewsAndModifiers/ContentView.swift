//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Steven McWee on 15/11/2023.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .titleStyle()
    }
}

#Preview {
    ContentView()
}
