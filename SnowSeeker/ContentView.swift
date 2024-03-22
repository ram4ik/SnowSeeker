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
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
      
        if horizontalSizeClass == .compact {
            HStack(content: UserView.init)
        } else {
            VStack(content: UserView.init)
        }
        
    }
}

#Preview {
    ContentView()
}
