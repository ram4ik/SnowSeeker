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
    var body: some View {
        ViewThatFits {
            Rectangle()
                .frame(width: 500, height: 200)
            
            Circle()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
