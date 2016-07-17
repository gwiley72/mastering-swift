//
//  State.swift
//  game
//
//  Created by Glenn Wiley on 7/16/16.
//  Copyright © 2016 Glenn Wiley. All rights reserved.
//

import Foundation

enum State : Int {
    case Living = 0, PreBirth, Dead
    
    static func randomState() -> State {
        
        guard let state = State(rawValue: Int(arc4random_uniform(2))) else {
            return .PreBirth
        }
        
        return state
    }
}