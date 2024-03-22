//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Ramill Ibragimov on 3/22/24.
//

import SwiftUI

@Observable
class Favorites {
    private var resorts: Set<String>
    private var key = "Favorites"
    
    init() {
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        
    }
}
