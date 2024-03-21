//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ramill Ibragimov on 3/21/24.
//

import SwiftUI

struct User: Identifiable {
    var id = "SwiftUI"
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowing = false
    
    var body: some View {
        Button("Tap Me") {
            selectedUser = User()
            isShowing = true
        }
        .alert("Welcome", isPresented: $isShowing, presenting: selectedUser) { user in
            Button(user.id) {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
