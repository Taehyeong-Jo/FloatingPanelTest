//
//  ContentView.swift
//  FloatingPanelTest
//
//  Created by Den Jo on 4/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isPanelPresented = false
    
    var body: some View {
        Button("Show Floating Panel") {
            isPanelPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPanelPresented) {
            FloatingPanelView()
        }
    }
}

#Preview {
    ContentView()
}
