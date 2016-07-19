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
        cells = assignCellsToGrid()
    }
    
    lazy var assignCellsToGrid: () -> [Cell] = {
        [weak self] in
        var cells = [Cell]()
        for xLoc in 0..<self!.gridSize {
            for yLoc in 0..<self!.gridSize {
                cells.append(Cell(x: xLoc, y: yLoc))
            }
        }
        return cells
    }
    
    func cellNeighbors(cell: Cell) -> [Cell] {
        return self.cells.getNeighbors { self.cellsAreNeighbors(cell, sideB: $0) }
    }
    
    func cellsAreNeighbors(sideA: Cell, sideB: Cell) -> Bool {
        let a = abs(sideA.xCoord - sideB.xCoord)
        let b = abs(sideA.yCoord - sideB.yCoord)
        
        if case (0...1, 0...1) = (a,b) where !(a == 0 && b == 0) {
            return true
        } else {
            return false
        }
    }
}