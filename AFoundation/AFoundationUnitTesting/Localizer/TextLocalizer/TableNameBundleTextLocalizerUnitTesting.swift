//
//  MultipleTextLocalizerUnitTestings.swift
//  AFoundationUnitTesting
//
//  Created by Ihor Myroniuk on 12/9/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import XCTest
import AFoundation

class TableNameBundleTextLocalizerUnitTesting: XCTestCase {

    private lazy var bundle = Bundle(for: self.classForCoder)

    func testNonEmptyStringCorrectText() {
        let textLocalizer = TableNameBundleTextLocalizer(tableName: "Strings", bundle: bundle)
        let text = "text"

        let actualLocalizedText = textLocalizer.localizeText(text)

        let expectedLocalizedText = "text"
        XCTAssert(actualLocalizedText == expectedLocalizedText, "Actual localized text [\(String(describing: actualLocalizedText))] is not equal to [\(expectedLocalizedText)]")
    }

    func testNonEmptyStringCorrectText1Argument() {
        let textLocalizer = TableNameBundleTextLocalizer(tableName: "Strings", bundle: bundle)
        let text = "textWithOneArgument"
        let argument1 = "argument1"

        let actualLocalizedText = textLocalizer.localizeText(text, argument1)

        let expectedLocalizedText = "argument #1: argument1"
        XCTAssert(actualLocalizedText == expectedLocalizedText, "Actual localized text [\(String(describing: actualLocalizedText))] is not equal to [\(expectedLocalizedText)]")
    }

    func testNonEmptyStringCorrectText1Argument2Argument() {
        let textLocalizer = TableNameBundleTextLocalizer(tableName: "Strings", bundle: bundle)
        let text = "textWithTwoArguments"
        let argument1 = "argument1"
        let argument2 = "argument2"

        let actualLocalizedText = textLocalizer.localizeText(text, argument1, argument2)

        let expectedLocalizedText = "argument #1: argument1, argument #2: argument2"
        XCTAssert(actualLocalizedText == expectedLocalizedText, "Actual localized text [\(String(describing: actualLocalizedText))] is not equal to [\(expectedLocalizedText)]")
    }

    func testNonEmptyStringIncorrectText() {
        let textLocalizer = TableNameBundleTextLocalizer(tableName: "Strings", bundle: bundle)
        let text = "text1"

        let actualLocalizedText = textLocalizer.localizeText(text)

        let expectedLocalizedText: String? = nil
        XCTAssert(actualLocalizedText == expectedLocalizedText, "Actual localized text [\(String(describing: actualLocalizedText))] is not equal to [\(String(describing: expectedLocalizedText))]")
    }






    func testStringsdict() {
        let textLocalizer = TableNameBundleTextLocalizer(tableName: "Stringsdict", bundle: bundle)
        let text = "weHaveApples"
        let number: Int = 1

        let actualLocalizedText = textLocalizer.localizeText(text, number)

        let expectedLocalizedText = "We have 1 apple."
        XCTAssert(actualLocalizedText == expectedLocalizedText, "Actual localized text [\(String(describing: actualLocalizedText))] is not equal to [\(String(describing: expectedLocalizedText))]")
    }

}
