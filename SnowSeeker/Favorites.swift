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
    
    init() {
        if let savedResorts = UserDefaults.standard.array(forKey: "Favorites") as? [String] {
            resorts = Set(savedResorts)
        } else {
            resorts = []
        }
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
        UserDefaults.standard.set(Array(resorts), forKey: "Favorites")
    }
}
