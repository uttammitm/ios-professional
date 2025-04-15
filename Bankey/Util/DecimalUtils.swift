//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Sonika Patel on 15/04/25.
//

import Foundation
extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
