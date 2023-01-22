//
//  ResetBoard.swift
//  ConnectFour
//
//  Created by Adel Al-Aali on 1/21/23.
//

import Foundation
import UIKit

internal class BoardFunctions {
    
    internal var board = [[Board]]() // init board matrix
    
    // MARK: To check if board is reset.
    internal func isReset() { print("[!] is Empty? \(board.isEmpty)") }
   
    internal func printBoard() {  // MARK: To print board
        for r in 1...5 {
             var rowIndexPath = IndexPath.init(index: r)
            let pos = Board(indexPath: rowIndexPath)
            print("[BOARD] [ROW] - \(r)");
            print("[BOARD] [IndexPath] --> \(rowIndexPath)");
            
        }; for c in 1...5 {
            var colIndexPath = IndexPath.init(index: c)
            var pos = Board(indexPath: colIndexPath)
            print("[BOARD] [ROW] - \(r)");             print("[BOARD] [IndexPath] --> \(rowIndexPath)");

        }
    }
   
    fileprivate func reset() { // Iterates through boards row and cols --> Sets current col to [Board.Color.e]
        for r in 0...5 {
             var color = Board().color
             var rowIndexPath = IndexPath.init(index: r)
             var boardInit = Board.init(indexPath: rowIndexPath, color: Board.Color.e)

        
            print("[BOARD] [POS] - \(r)");print("[BOARD] [Index] - \(String(describing: rowIndexPath))")
            print("[BOARD] [isEmpty] - \(board.isEmpty)");print("[BOARD] [Init] - \(boardInit)");print("[BOARD] [COLOR] - \(String(describing: color))")

            for c in 0...5 {
                let colIndexPath = IndexPath.init(row: r, section: c)
                let item = Board(indexPath: colIndexPath, color: Board.Color.e)
                print("[BOARD] [COL] - \(c)"); print("[BOARD] [IndexPath] --> \(colIndexPath)");print("[BOARD] [current-Item] - \(item)")
                
            }
        }
    }
}
