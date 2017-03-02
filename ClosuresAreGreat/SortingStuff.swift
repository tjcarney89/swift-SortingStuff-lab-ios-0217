//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    mutating func sortShips() {
        ships = ships.sorted {
            if $0.name == "Titanic" {
                ships[0] = $0
                return true
            }
                return $0.age > $1.age }
        
        
    }
    
    mutating func sortBooks() {
        books = books.sorted { $0.name < $1.name }
    }
    
    mutating func sortBowlingPins() {
        bowlingPins = bowlingPins.sorted { $0.color.rawValue < $1.color.rawValue }
    }
    
    mutating func sortMusicCDs() {
        musicCDs = musicCDs.sorted {
            if $0.name == "Drake" {
                musicCDs[0] = $0
                return true
            }
            return $0.name < $1.name }
        
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        bowlingPins = bowlingPins.map { (pin: BowlingPin) -> BowlingPin in
            
            var newPin = pin
            newPin.changeColor(to: color)
            return newPin
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


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
