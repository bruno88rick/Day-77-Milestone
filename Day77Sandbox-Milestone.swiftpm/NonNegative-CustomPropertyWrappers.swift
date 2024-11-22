//
//  File.swift
//  Day77Sandbox-Milestone
//
//  Created by Bruno Oliveira on 22/11/24.
//

import Foundation

//putting this on a struct will tell swift to use the structure as a propertyWrapper like @State or @Environment
@propertyWrapper
struct NonNegative<Value: BinaryInteger> {
    var value: Value
    
    init(wrappedValue: Value) {
        if wrappedValue < 0 {
            value = 0
        } else {
            value = wrappedValue
        }
    }
    
    var wrappedValue: Value {
        get { value }
        set {
            if newValue < 0 {
                value = 0
            } else {
                value = newValue
            }
        }
    }
    
}
