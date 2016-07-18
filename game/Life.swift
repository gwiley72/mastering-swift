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
        var neighbors : [Cell] = []
        for cell2 in cells {
            
            let a = abs(cell.xCoord - cell2.xCoord)
            let b = abs(cell.yCoord - cell2.yCoord)
            
            var check = false
            switch (a, b) {
            case (1,1), (1,0), (0,1):
                check = true
            default:
                check = false
            }
            
            if check == true {
                neighbors.append(cell2)
            }
        }
        
        return neighbors
    }
}