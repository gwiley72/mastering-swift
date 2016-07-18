//
//  ViewController.swift
//  game
//
//  Created by Glenn Wiley on 7/16/16.
//  Copyright © 2016 Glenn Wiley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: UIView!
    var life = Life()
    let gameBoard : GameBoard
    
    required init?(coder aDecoder: NSCoder) {
        gameBoard = GameBoard(createLife: life)
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameBoard.frame = boardView.frame
        gameBoard.center = CGPointMake(gameBoard.frame.size.width / 2, gameBoard.frame.size.height / 2)
        boardView.addSubview(gameBoard)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

