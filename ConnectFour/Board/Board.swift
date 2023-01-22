//
//  Board.swift
//  ConnectFour
//
//  Created by Adel Al-Aali on 1/21/23.
//

import Foundation
import UIKit



/* Constructs the board */

// NOTE: Builds the board, uses BOOL function to verify if color is used.
// NOTE: Extension to change  individual board color
// NOTE: ChangeColor is an ENUM / CASE-SWITCH STATEMENT in [ChangeColor.swift]

internal struct Board { // color == color
 
    internal var indexPath: IndexPath! // positioning
    internal var color: Color!
    
    // NOTE: Color objects verify current color
    internal enum Color {
        case r // red
        case y // yellow
        case e // empty
    }
    
    // NOTE:  BOOL to verify current color
    internal func isYellow() -> Bool { return color == Color.y }
    internal func isRed() -> Bool { return color == Color.r }
    internal func isEmpty() -> Bool { return color == Color.e }
    
}
//..fin

