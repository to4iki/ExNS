//
//  NSNumber+ExNS.swift
//  ExNS
//
//  Created by to4iki on 11/26/15.
//  Copyright © 2015 to4iki. All rights reserved.
//

import Foundation

extension NSNumber {
    
    public var decimalNumber: NSDecimalNumber {
        return NSDecimalNumber(decimal: self.decimalValue)
    }
}

/// MARK: - Arithmetic

extension NSNumber {
    
    public func add(rhs: NSNumber) -> NSNumber {
        return decimalNumber
            .decimalNumberByAdding(rhs.decimalNumber)
    }
    
    public func subtract(rhs: NSNumber) -> NSNumber {
        return decimalNumber
            .decimalNumberBySubtracting(rhs.decimalNumber)
    }
    
    public func multiply(rhs: NSNumber) -> NSNumber {
        return decimalNumber
            .decimalNumberByMultiplyingBy(rhs.decimalNumber)
    }
    
    public func divide(rhs: NSNumber) -> NSNumber {
        return decimalNumber
            .decimalNumberByDividingBy(rhs.decimalNumber)
    }
}

/// MARK: - Operators

public func + (lhs: NSNumber, rhs: NSNumber) -> NSNumber {
    return lhs.add(rhs)
}

public func - (lhs: NSNumber, rhs: NSNumber) -> NSNumber {
    return lhs.subtract(rhs)
}

public func * (lhs: NSNumber, rhs: NSNumber) -> NSNumber {
    return lhs.multiply(rhs)
}

public func / (lhs: NSNumber, rhs: NSNumber) -> NSNumber {
    return lhs.divide(rhs)
}