//
//  FlowNodeTests.swift
//  PitchSpellerTests
//
//  Created by Benjamin Wetherfield on 6/17/19.
//

import XCTest
import Pitch
import SpelledPitch
import Foundation
@testable import PitchSpeller

class FlowNodeTests: XCTestCase {
    
    func testEncodableFlowNode() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let source = try! encoder.encode(FlowNode<Int>.source)
        XCTAssertEqual(String(data: source, encoding: .utf8)!,
"""
{
  "external" : "source"
}
"""
        )
        let sink = try! encoder.encode(FlowNode<Int>.sink)
        XCTAssertEqual(String(data: sink, encoding: .utf8)!,
                       """
{
  "external" : "sink"
}
"""
        )
        let node = try! encoder.encode(FlowNode<Int>.internal(3))
        XCTAssertEqual(String(data: node, encoding: .utf8)!,
                  """
{
  "internal" : 3
}
"""
        )
    }
    
    func testDecodableFlowNode() {
        let sourceTest = Data("""
{
  "external" : "source"
}
""".utf8)
        let sinkTest = Data("""
{
  "external" : "sink"
}
""".utf8)
        let nodeTest = Data("""
{
  "internal" : 3
}
""".utf8)
        let source = try! JSONDecoder().decode(FlowNode<Int>.self, from: sourceTest)
        let sink = try! JSONDecoder().decode(FlowNode<Int>.self, from: sinkTest)
        let node = try! JSONDecoder().decode(FlowNode<Int>.self, from: nodeTest)
        XCTAssertEqual(sink, .sink)
        XCTAssertEqual(source, .source)
        XCTAssertEqual(node, .internal(3))
    }
}
