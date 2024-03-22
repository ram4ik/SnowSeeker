//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ramill Ibragimov on 3/21/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("SwiftUI")
            Text("Swift")
        }
        .font(.title)
    }
}

struct ContentView: View {
    @State private var layoutVertically = false
    
    var body: some View {
        Button {
            layoutVertically.toggle()
        } label: {
            if layoutVertically {
                HStack {
                    UserView()
                }
            } else {
                VStack {
                    UserView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
