//
//  CurrencyFormatterTests.swift
//  BankeyBankeyTests
//
//  Created by Sonika Patel on 15/04/25.
//

import Foundation
import XCTest

@testable import Bankey
class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
        
    }
    func testBreaksDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0,"929,466")
        XCTAssertEqual(result.1, "23")
        
    }
    // Converts 929466 > $929,466.00
    func testDollarsFormattedwithCurrencySymbol() throws {
        let locale = Locale.current
       let currencySymbol = locale.currencySymbol!
        let result = formatter.dollarsFormatted(929466)
        XCTAssertEqual(result,"\(currencySymbol)929,466.00" )
        
    }
    //
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(00)
        XCTAssertEqual(result, "$0.00")
    }
}
