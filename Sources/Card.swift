/*
 This source file is part of the Swift.org open source project
 
 Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception
 
 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
*/

public struct Card {
    let rank: Rank
    let suit: Suit

    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
}

// MARK: - Equatable

extension Card: Equatable {}

public func ==(lhs: Card, rhs: Card) -> Bool {
    return lhs.rank == rhs.rank && lhs.suit == rhs.suit
}

// MARK: - Comparable

extension Card: Comparable {}

public func <(lhs: Card, rhs: Card) -> Bool {
    return lhs.rank == rhs.rank ? lhs.suit == rhs.suit : lhs.rank < rhs.rank
}

// MARK: - CustomStringConvertible

extension Card : CustomStringConvertible {
    public var description: String {
        return "\(rank)\(suit)"
    }
}
