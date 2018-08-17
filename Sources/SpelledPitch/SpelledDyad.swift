//
//  SpelledDyad.swift
//  SpelledPitch
//
//  Created by James Bean on 5/12/16.
//
//

import Algorithms

/// Dyad of `SpelledPitch` values.
public struct SpelledDyad {
    
    // MARK: - Instance Properties
    
    /// Lower of the two `SpelledPitch` values.
    public let lower: SpelledPitch
    
    /// Higher of the two `SpelledPitch` values.
    public let higher: SpelledPitch
    
    /// - returns: Relative named interval, which does not ordering of `SpelledPitch` values
    /// contained herein.
    public var unorderedInterval: NamedUnorderedInterval {
        return NamedUnorderedInterval(lower.spelling, higher.spelling)
    }
    
    /// - returns: Absolute named interval, which honors ordering of `SpelledPitch` values
    /// contained herein.
    //
    // FIXME: Implement
    public var orderedInterval: NamedOrderedInterval {
        fatalError()
    }
    
    // MARK: - Initializers
    
    /// Create a `SpelledDyad` with two `SpelledPitch` values.
    public init(_ lower: SpelledPitch, _ higher: SpelledPitch) {
        let (lower, higher) = ordered(lower, higher)
        self.lower = lower
        self.higher = higher
    }
}

extension SpelledDyad: Equatable, Hashable { }
