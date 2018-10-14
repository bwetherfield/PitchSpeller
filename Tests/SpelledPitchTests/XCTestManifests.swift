import XCTest

extension CompoundIntervalDescriptorTests {
    static let __allTests = [
        ("testInitTwoSpelledPitchesAscendingMajorTenth", testInitTwoSpelledPitchesAscendingMajorTenth),
        ("testInitTwoSpelledPitchesAscendingMinorSecond", testInitTwoSpelledPitchesAscendingMinorSecond),
        ("testInitTwoSpelledPitchesAscendingMinorSixth", testInitTwoSpelledPitchesAscendingMinorSixth),
        ("testInitTwoSpelledPitchesDescendingMajorSecond", testInitTwoSpelledPitchesDescendingMajorSecond),
        ("testInitTwoSpelledPitchesDescendingPerfectEleventh", testInitTwoSpelledPitchesDescendingPerfectEleventh),
        ("testInitTwoSpelledPitchesUnison", testInitTwoSpelledPitchesUnison),
    ]
}

extension FlowNetworkTests {
    static let __allTests = [
        ("testFlowNetworkAbsorbsSourceSink", testFlowNetworkAbsorbsSourceSink),
        ("testMinimumCut", testMinimumCut),
        ("testRandomNetwork", testRandomNetwork),
        ("testUnreachableMinimumCut", testUnreachableMinimumCut),
    ]
}

extension PitchSpellingCategoryTests {
    static let __allTests = [
        ("testLetterNamePredecessor", testLetterNamePredecessor),
        ("testLetterNameSuccessor", testLetterNameSuccessor),
        ("testNeutralLetterName", testNeutralLetterName),
        ("testPCEight_AFlat", testPCEight_AFlat),
        ("testPCEightNeutral_Nil", testPCEightNeutral_Nil),
        ("testPCEightUp_GSharp", testPCEightUp_GSharp),
        ("testPCFourDown_FFlat", testPCFourDown_FFlat),
        ("testPCFourNeutral_ENatural", testPCFourNeutral_ENatural),
        ("testPCFourUp_DDoubleSharp", testPCFourUp_DDoubleSharp),
        ("testPCOneDown_DFlat", testPCOneDown_DFlat),
        ("testPCOneNeutral_CSharp", testPCOneNeutral_CSharp),
        ("testPCOneUp_BDoubleSharp", testPCOneUp_BDoubleSharp),
        ("testPCThreeDown_FDoubleFlat", testPCThreeDown_FDoubleFlat),
        ("testPCThreeNeutral_EFlat", testPCThreeNeutral_EFlat),
        ("testPCThreeUp_DSharp", testPCThreeUp_DSharp),
        ("testPCTwoDown_EDoubleFlat", testPCTwoDown_EDoubleFlat),
        ("testPCTwoNeutral_DNatural", testPCTwoNeutral_DNatural),
        ("testPCTwoUp_CDoubleSharp", testPCTwoUp_CDoubleSharp),
        ("testPCZeroDown_DDoubleFlat", testPCZeroDown_DDoubleFlat),
        ("testPCZeroNeutral_CNatural", testPCZeroNeutral_CNatural),
        ("testPCZeroUp_BSharp", testPCZeroUp_BSharp),
    ]
}

extension PitchSpellingTendencyTests {
    static let __allTests = [
        ("testPCEightUpDown_GSharp", testPCEightUpDown_GSharp),
        ("testPCElevenUpDown_BNatural", testPCElevenUpDown_BNatural),
        ("testPCNineDownDown_BDoubleFlat", testPCNineDownDown_BDoubleFlat),
        ("testPCSixUpUp_EDoubleSharp", testPCSixUpUp_EDoubleSharp),
        ("testPCThreeUpDown_EFlat", testPCThreeUpDown_EFlat),
        ("testPCZeroUpDown_CNatural", testPCZeroUpDown_CNatural),
    ]
}

extension PitchSpellingTests {
    static let __allTests = [
        ("testGThreeQuarterFlatUpFivePointSeventyFive", testGThreeQuarterFlatUpFivePointSeventyFive),
        ("testInitJustLetterName", testInitJustLetterName),
        ("testPitchClassCQuarterSharpDownZeroPointTwoFive", testPitchClassCQuarterSharpDownZeroPointTwoFive),
        ("testPitchClassCQuarterSharpUpZeroPointSevenFive", testPitchClassCQuarterSharpUpZeroPointSevenFive),
        ("testPitchClassCQuarterSharpZeroPointFive", testPitchClassCQuarterSharpZeroPointFive),
        ("testPitchClassCSharpOne", testPitchClassCSharpOne),
        ("testPitchClassCZero", testPitchClassCZero),
        ("testPitchClassDDoubleFlatZero", testPitchClassDDoubleFlatZero),
    ]
}

extension PitchSpellingsTests {
    static let __allTests = [
        ("testDefaultPitchSpellingsForEighthToneResolution", testDefaultPitchSpellingsForEighthToneResolution),
        ("testMiddleCPitchSpelling", testMiddleCPitchSpelling),
    ]
}

extension SpelledDyadTests {
    static let __allTests = [
        ("testDiminishedThird", testDiminishedThird),
        ("testDoubleAugmentedSixth", testDoubleAugmentedSixth),
        ("testInitSorted", testInitSorted),
        ("testRelativeNamedIntervalAugmentedFourth", testRelativeNamedIntervalAugmentedFourth),
        ("testRelativeNamedIntervalAugmentedSecond", testRelativeNamedIntervalAugmentedSecond),
        ("testRelativeNamedIntervalDiminishedFourth", testRelativeNamedIntervalDiminishedFourth),
        ("testRelativeNamedIntervalDiminishedSecond", testRelativeNamedIntervalDiminishedSecond),
        ("testRelativeNamedIntervalDoubleDiminishedFourth", testRelativeNamedIntervalDoubleDiminishedFourth),
        ("testRelativeNamedIntervalDoubleDiminishedSecond", testRelativeNamedIntervalDoubleDiminishedSecond),
        ("testRelativeNamedIntervalMinorSecond", testRelativeNamedIntervalMinorSecond),
        ("testRelativeNamedIntervalPerfectFourth", testRelativeNamedIntervalPerfectFourth),
        ("testRelativeNamedIntervalPerfectUnison", testRelativeNamedIntervalPerfectUnison),
        ("testTripleAugmentedUnison", testTripleAugmentedUnison),
    ]
}

extension SpelledPitchTests {
    static let __allTests = [
        ("testBQuarterSharp", testBQuarterSharp),
        ("testBSharpDown", testBSharpDown),
        ("testComparableDifferentOctave", testComparableDifferentOctave),
        ("testComparableMinorSixth", testComparableMinorSixth),
        ("testComparableSameLetter", testComparableSameLetter),
        ("testComparableSameOctave", testComparableSameOctave),
        ("testExtrema", testExtrema),
        ("testOctaveBBelowMiddleC", testOctaveBBelowMiddleC),
        ("testOctaveBSharp", testOctaveBSharp),
        ("testOctaveCFlat", testOctaveCFlat),
        ("testOctaveCNaturalDown", testOctaveCNaturalDown),
        ("testOctaveCQuarterFlat", testOctaveCQuarterFlat),
        ("testOctaveDAboveMiddleC", testOctaveDAboveMiddleC),
        ("testOctaveMiddleC", testOctaveMiddleC),
    ]
}

extension UnorderedIntervalDescriptorTests {
    static let __allTests = [
        ("testBFlatDSharpAugmentedThird", testBFlatDSharpAugmentedThird),
        ("testCASharpAugmentedSixthDiminishedThird", testCASharpAugmentedSixthDiminishedThird),
        ("testDFSharpMajorThird", testDFSharpMajorThird),
        ("testInitAugmentedUnison", testInitAugmentedUnison),
        ("testInitDoubleAugmentedUnison", testInitDoubleAugmentedUnison),
        ("testInitMinorSecond", testInitMinorSecond),
        ("testInitTripleAugmentedUnison", testInitTripleAugmentedUnison),
        ("testInitUnisonSamePitchClass", testInitUnisonSamePitchClass),
    ]
}

extension WetherfieldTests {
    static let __allTests = [
        ("testInitDyadNodeCount", testInitDyadNodeCount),
        ("testInitMonadNodeCount", testInitMonadNodeCount),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CompoundIntervalDescriptorTests.__allTests),
        testCase(FlowNetworkTests.__allTests),
        testCase(PitchSpellingCategoryTests.__allTests),
        testCase(PitchSpellingTendencyTests.__allTests),
        testCase(PitchSpellingTests.__allTests),
        testCase(PitchSpellingsTests.__allTests),
        testCase(SpelledDyadTests.__allTests),
        testCase(SpelledPitchTests.__allTests),
        testCase(UnorderedIntervalDescriptorTests.__allTests),
        testCase(WetherfieldTests.__allTests),
    ]
}
#endif
