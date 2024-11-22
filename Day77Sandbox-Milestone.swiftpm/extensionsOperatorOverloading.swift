//
//  File.swift
//  Day77Sandbox-Milestone
//
//  Created by Bruno Oliveira on 22/11/24.
//

import Foundation

extension Int {
    static func *(lhs: Int, rhs: Double) -> Double {
        return Double(lhs) * rhs
    }
}

extension BinaryInteger {
    static func *(lhs: Self, rhs: Double) -> Double {
        return Double(lhs) * rhs
    }
    
    static func *(lhs: Double, rhs: Self) -> Double {
        return lhs * Double(rhs)
    }
}
