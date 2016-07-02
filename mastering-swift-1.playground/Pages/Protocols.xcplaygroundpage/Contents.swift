/*:
 ## Protocol-Oriented Programming
 Lesson 1 - Swift Review
 */

import Foundation

protocol Randomize {
    func shuffle<T>(_:T)
}

extension Array: Randomize {
    func shuffle<T>(_:T) {
        
    }
}

extension CollectionType {
    func shuffle<T>(_:T) {
        
    }
}

extension CollectionType where Self.Generator.Element: Comparable {
    func shuffle<T>(_:T) {
        
    }
}
