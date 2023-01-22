import Foundation
import UIKit

// NOTE:to change  individual board color
public enum titleColor  {
    case yellow
    case red
    case empty
}
extension titleColor {
    public var colors : UIColor {
        switch self {
        case .empty : return .lightGray
        case .yellow : return .yellow
        case .red : return .red
        }
    }
}
// .. fin

