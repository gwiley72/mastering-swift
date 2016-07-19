//
//  Utility.swift
//  game
//
//  Created by Glenn Wiley on 7/18/16.
//  Copyright © 2016 Glenn Wiley. All rights reserved.
//

import Foundation

extension Array {
    func getNeighbors(predicate: (Cell) -> Bool) -> [Cell] {
        var neighbors = [Cell]()
        for item in self {
            let cell = item as! Cell
            if predicate(cell) {
                neighbors.append(cell)
            }
        }
        return neighbors
    }
}