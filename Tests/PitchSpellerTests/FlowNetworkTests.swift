//
//  FlowNetworkTests.swift
//  SpelledPitchTests
//
//  Created by James Bean on 9/21/18.
//

import XCTest
import Algebra
import DataStructures
import SpelledPitch
@testable import PitchSpeller

class FlowNetworkTests: XCTestCase {

    /// Simple flow network which looks like this:
    ///     a
    ///  1 / \ 3
    ///   s   t
    ///  2 \ / 4
    ///     b
    var simpleFlowNetwork: FlowNetwork<String,Int> {
        var graph = WeightedDirectedGraph<FlowNode<String>,Int>()
        graph.insert(.internal("a"))
        graph.insert(.internal("b"))
        graph.insert(.source)
        graph.insert(.sink)
        graph.insertEdge(from: .source, to: .internal("a"), weight: 1)
        graph.insertEdge(from: .source, to: .internal("b"), weight: 2)
        graph.insertEdge(from: .internal("a"), to: .sink, weight: 3)
        graph.insertEdge(from: .internal("b"), to: .sink, weight: 4)
        return FlowNetwork(graph)
    }
    
    func assertDuality <Node> (_ flowNetwork: FlowNetwork<Node,Double>) {
        let minCut = flowNetwork.minimumCut
        let diGraph = flowNetwork
        let solvedFlow = flowNetwork.maximumFlowAndResidualNetwork.flow
        let cutValue = minCut.0.lazy.map { startNode in
            return diGraph.neighbors(of: startNode, in: minCut.1).lazy
                .compactMap { diGraph.weight(from: startNode, to: $0) }
                .sum
            }.sum
        XCTAssertLessThanOrEqual(cutValue, solvedFlow + 1E-5)
        XCTAssertGreaterThanOrEqual(cutValue + 1E-5, solvedFlow)
    }
    
    func assertDisconnectedness <Node,Weight> (_ flowNetwork: FlowNetwork<Node,Weight>) {
        let minCut = flowNetwork.minimumCut
        let residualNetwork = flowNetwork.maximumFlowAndResidualNetwork.network
        minCut.0.lazy.forEach { startNode in
            minCut.1.lazy.forEach { endNode in
                XCTAssertFalse(residualNetwork.contains(OrderedPair(startNode,endNode)))
                XCTAssert(Set(residualNetwork.breadthFirstSearch(from: startNode)).isDisjoint(with: minCut.1))
            }
        }
    }
    
    func testMinimumCut() {
        XCTAssertEqual(simpleFlowNetwork.minimumCut.0, [.source])
        XCTAssertEqual(simpleFlowNetwork.minimumCut.1, [.internal("a"),.internal("b"),.sink])
    }
    
    func testUnreachableMinimumCut() {
        var graph = WeightedDirectedGraph<FlowNode<String>,Int>()
        graph.insert(.source)
        graph.insert(.internal("a"))
        graph.insert(.internal("b"))
        graph.insert(.sink)
        graph.insertEdge(from: .source, to: .internal("a"), weight: 2)
        graph.insertEdge(from: .internal("a"), to: .internal("b"), weight: 2)
        graph.insertEdge(from: .internal("b"), to: .sink, weight: 3)
        let cut = FlowNetwork(graph).minimumCut
        XCTAssertEqual(cut.0.union(cut.1), [.source, .internal("a"), .sink, .internal("b")])
    }

    func testFlowNetworkMaskEmpty() {
        let weightScheme = WeightedGraphScheme<FlowNode<String>,Int> { _ in nil }
        var flowNetwork = simpleFlowNetwork
        flowNetwork.mask(weightScheme)
        XCTAssertEqual(flowNetwork.nodes, simpleFlowNetwork.nodes)
        XCTAssert(flowNetwork.edges.isEmpty)
    }

    func testFlowNetworkMaskSquared() {
        let maskScheme = WeightedGraphScheme<FlowNode<String>,Int> { edge in
            self.simpleFlowNetwork.weight(from: edge.a, to: edge.b)
        }
        var flowNetwork = simpleFlowNetwork
        flowNetwork.mask(maskScheme)
        for edge in flowNetwork.edges {
            let expected = simpleFlowNetwork.weight(edge)! * simpleFlowNetwork.weight(edge)!
            XCTAssertEqual(flowNetwork.weight(edge)!, expected)
        }
    }

    func testPitchSpellingTestCase() {
        let expectedGraph = WeightedDirectedGraph<PitchSpellingNode.Index,Double> (Set([
            .internal(.init(1,.down)),
            .internal(.init(1,.up)),
            .internal(.init(3,.down)),
            .internal(.init(3,.up)),
            .source,
            .sink]), [
                
                // source edges
                .init(.source,                  .internal(.init(1,.down))): 3,
                .init(.source,                  .internal(.init(3,.down))): 1,
                
                //sink edges
                .init(.internal(.init(1,  .up)),                    .sink): 1,
                .init(.internal(.init(3,  .up)),                    .sink): 3,
                
                // bigM edges
                .init(.internal(.init(1,  .up)),.internal(.init(1,.down))): Double.infinity,
                .init(.internal(.init(3,  .up)),.internal(.init(3,.down))): Double.infinity,
                
                // internal edges
                .init(.internal(.init(1,  .up)),.internal(.init(3,.down))): 0.5,
                .init(.internal(.init(1,.down)),.internal(.init(3,  .up))): 4,
                .init(.internal(.init(3,  .up)),.internal(.init(1,.down))): 4,
                .init(.internal(.init(3,.down)),.internal(.init(1,  .up))): 0.5,
                ]
        )
        let expectedFlowNetwork = FlowNetwork<Cross<Int,Tendency>,Double> (expectedGraph)
        let (sourceNodes, sinkNodes) = expectedFlowNetwork.minimumCut
        let expectedSourceNodes = Set<PitchSpellingNode.Index>([.source, .internal(.init(3, .down))])
        let expectedSinkNodes = Set<PitchSpellingNode.Index>([.sink,
                                                              .internal(.init(3, .up)),
                                                              .internal(.init(1, .down)),
                                                              .internal(.init(1, .up))])
        XCTAssertEqual(sourceNodes, expectedSourceNodes)
        XCTAssertEqual(sinkNodes, expectedSinkNodes)
    }
}
