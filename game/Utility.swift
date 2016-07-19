//
//  Utility.swift
//  game
//
//  Created by Glenn Wiley on 7/18/16.
//  Copyright © 2016 Glenn Wiley. All rights reserved.
//

import Foundation

extension Array {
    
    func customFilter(predicate: (Element) -> Bool) -> [Element] {
       
        var filteredArray = [Element]()
        for x in self where predicate(x) {
            filteredArray.append(x)
        }

        return filteredArray
    }
}