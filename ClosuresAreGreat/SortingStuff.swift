//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    mutating func sortShips() {
        
        ships = ships.sorted { first, second in
            if first.name == "Titanic" { return true }
            return first.age > second.age
        }
        
    }
    
    mutating func sortBooks() {
        
        books = books.sorted { $0.name < $1.name }
        
    }
    
    mutating func sortBowlingPins() {
        
        bowlingPins = bowlingPins.sorted { $0.color.rawValue < $1.color.rawValue }
        
    }
    
    mutating func sortMusicCDs() {
        
        musicCDs = musicCDs.sorted { first, second in
            if first.name == "Drake" { return true }
            return first.name < second.name
        }
        
    }
    
    
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}



struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
