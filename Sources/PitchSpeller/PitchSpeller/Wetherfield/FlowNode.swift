//
//  FlowNode.swift
//  PitchSpeller
//
//  Created by Benjamin Wetherfield on 6/4/19.
//

import DataStructures

public enum FlowNode<Index>: Hashable where Index: Hashable {
    case `internal`(Index)
    case source
    case sink
}

func bind <S: Hashable, A: Hashable> (_ f: @escaping (S) -> A) -> (FlowNode<S>) -> FlowNode<A> {
    return { flowNodeS in
        switch flowNodeS {
        case .internal(let index): return .internal(f(index))
        case .source: return .source
        case .sink: return .sink
        }
    }
}


