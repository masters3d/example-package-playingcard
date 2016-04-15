/*
 This source file is part of the Swift.org open source project
 
 Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception
 
 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
*/

import XCTest
@testable import PlayingCard

class CardTest: XCTestCase {
    
    func testPlayingCardSingle(){
        let card1 = PlayingCard(rank: .queen, suit: .diamonds)
        let card2 = PlayingCard(rank: .king, suit: .diamonds)
        let card3 = PlayingCard(rank: .ace, suit: .clubs)
        let card4 = PlayingCard(rank: .queen, suit: .diamonds)

        XCTAssertGreaterThan(card2, card1)
        XCTAssertGreaterThan(card3, card2)
        XCTAssertEqual(card1, card4)
    }
    
    func testPlayingCardStringEquality(){
        let card1 = PlayingCard(rank: .jack, suit: .clubs)
        let card2 = PlayingCard(rank: .two, suit: .hearts)
        let card3 = PlayingCard(rank: .queen, suit: .diamonds)
        
        XCTAssertEqual(String(card1), "J♣︎")
        XCTAssertEqual(String(card2), "2♡")
        XCTAssertEqual(String(card3), "Q♢")
    }
    
    
}
