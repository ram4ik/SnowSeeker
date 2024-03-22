//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Ramill Ibragimov on 3/21/24.
//

import SwiftUI

@Observable
class Player {
    var name = "Anonymous"
    var highScore = 0
}

struct HighScoreView: View {
    @Environment(Player.self) var player
    
    var body: some View {
        Text("Your high score: \(player.highScore)")
    }
}

struct ContentView: View {
    @State private var player = Player()
    
    var body: some View {
        VStack {
            Text("Welcome!")
            HighScoreView()
        }
        .environment(player)
    }
}

#Preview {
    ContentView()
}
