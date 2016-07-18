//
//  Cell.swift
//  game
//
//  Created by Glenn Wiley on 7/17/16.
//  Copyright © 2016 Glenn Wiley. All rights reserved.
//

import Foundation

class Cell {
    let xCoord : Int
    let yCoord : Int
    var state : State
    
    init(x: Int, y: Int) {
        self.xCoord = x
        self.yCoord = y
        self.state = State.randomState()
    }
}