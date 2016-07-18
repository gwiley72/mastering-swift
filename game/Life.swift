//
//  Life.swift
//  game
//
//  Created by Glenn Wiley on 7/17/16.
//  Copyright © 2016 Glenn Wiley. All rights reserved.
//

import Foundation

class Life {
    var cells: [Cell]
    let gridSize: Int = 20
    
    init() {
        cells = [Cell]()
        for xLoc in 0..<self.gridSize {
            for yLoc in 0..<self.gridSize {
                cells.append(Cell(x: xLoc, y: yLoc))
            }
        }
    }
}