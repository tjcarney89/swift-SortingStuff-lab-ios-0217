//
//  ClosuresAreGreatTests.swift
//  ClosuresAreGreatTests
//
//  Created by Johann Kerr on 12/29/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import XCTest
@testable import ClosuresAreGreat
class ClosuresAreGreatTests: XCTestCase {

    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testSortShips() {
        
        var toyBin = ToyBin()
        let titanic = Ship(name: "Titanic", age: 104)
        let johann = Ship(name: "Johann", age: 100)
        let jim = Ship(name: "Jim", age: 120)
        toyBin.ships = [johann, jim,titanic]
        toyBin.sortShips()
        
        let firstShip = toyBin.ships.first
        let secondShip = toyBin.ships[1]
        let lastShip = toyBin.ships.last
        
        XCTAssertEqual(firstShip?.name, "Titanic")
        XCTAssertEqual(secondShip.name, "Jim")
        XCTAssertEqual(lastShip?.name, "Johann")
    }
    
    
    func testSortBooks() {
        var toyBin = ToyBin()
        let hp = Book(name: "Harry Potter", year: 2000, author: "JK Rowling")
        let got = Book(name: "Game of Thrones", year: 2000, author: "G Martin")
        let aoh = Book(name: "Audacity of Hope", year: 2000, author: "Barack Obama")

        toyBin.books = [hp, got, aoh]
        toyBin.sortBooks()

        let firstBook = toyBin.books.first
        let secondBook = toyBin.books[1]
        let lastBook = toyBin.books.last
        
        XCTAssertEqual(firstBook?.name, aoh.name)
        XCTAssertEqual(secondBook.name, got.name)
        XCTAssertEqual(lastBook?.name, hp.name)
    }
    
    
    func testSortBowlingPins() {
        var toyBin = ToyBin()
        let redPin = BowlingPin(name: "R", film: "", color: .red)
        let orangePin = BowlingPin(name: "O", film: "", color: .orange)
        let yellowPin = BowlingPin(name: "R", film: "", color: .yellow)
        toyBin.bowlingPins = [redPin,orangePin,yellowPin]
        toyBin.sortBowlingPins()
        let firstPin = toyBin.bowlingPins.first
        let secondPin = toyBin.bowlingPins[1]
        let lastPin = toyBin.bowlingPins.last
        
        XCTAssertEqual(firstPin?.color, redPin.color)
        XCTAssertEqual(secondPin.color, orangePin.color)
        XCTAssertEqual(lastPin?.color, yellowPin.color)

    }
    
    
    func testSortMusicCds() {
        var toyBin = ToyBin()
        let drake = MusicCD(name: "Drake", year: 2016, songs: ["Hotline Bling"])
        let kanye = MusicCD(name: "Kanye", year: 2016, songs: ["Father Stretch My Hands"])
        let weeknd  = MusicCD(name: "The Weeknd", year: 2016, songs: ["Starboy"])
        
      
        toyBin.musicCDs = [kanye, weeknd,drake]
        toyBin.sortMusicCDs()
        
        let firstCD = toyBin.musicCDs.first
        let secondCD = toyBin.musicCDs[1]
        let lastCD = toyBin.musicCDs.last
        
        XCTAssertEqual(firstCD?.name, drake.name)
        XCTAssertEqual(secondCD.name, kanye.name)
        XCTAssertEqual(lastCD?.name, weeknd.name)
        
    }
    
    
    func testChangeColorOfAllPins() {
        var toyBin = ToyBin()
        let redPin = BowlingPin(name: "R", film: "", color: .red)
        let orangePin = BowlingPin(name: "O", film: "", color: .orange)
        let yellowPin = BowlingPin(name: "R", film: "", color: .yellow)
        toyBin.bowlingPins = [redPin,orangePin,yellowPin]
        toyBin.changeColorOfAllPins(to: .violet)
        
        for pin in toyBin.bowlingPins {
            XCTAssertEqual(pin.color, .violet)
        }
    }
    
    
    

    
}
