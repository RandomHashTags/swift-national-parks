//
//  SequenceExtensions.swift
//
//
//  Created by Evan Anderson on 7/3/23.
//

import Foundation

extension Array {
    /// - Warning: entering a negative number will result in a Index-Out-Of-Bounds crash.
    func get(_ index: Int) -> Element? {
        return index < count ? self[index] : nil
    }
    
    /// Alternative to `first!`.
    var first_nonoptional : Element {
        return self[0]
    }
    /// Alternative to `last!`.
    var last_nonoptional : Element {
        return self[count-1]
    }
}
