//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ramill Ibragimov on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            Text("Search for \(searchText)")
                .searchable(text: $searchText, prompt: "Look for something")
                .navigationTitle("Searching")
        }
    }
}

#Preview {
    ContentView()
}
