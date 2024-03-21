//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ramill Ibragimov on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            Text("Primary")
        } detail: {
            Text("Content")
        }
    }
}

#Preview {
    ContentView()
}
