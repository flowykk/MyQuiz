//
//  ColorsEnum.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation
import UIKit

enum ColorsEnum: CaseIterable {
    case orange
    case green
    case pink
    case purple
    case blue
    case red
    case yellow
    case cyan
    case teal
    case brown
}

extension ColorsEnum {
    var value: UIColor {
        get {
            switch self {
            case .orange: return UIColor.systemOrange
            case .green: return UIColor.systemGreen
            case .pink: return UIColor.systemPink
            case .purple: return UIColor.systemPurple
            case .blue: return UIColor.systemBlue
            case .red: return UIColor.systemRed
            case .yellow: return UIColor.systemYellow
            case .cyan: return UIColor.systemCyan
            case .teal: return UIColor.systemTeal
            case .brown: return UIColor.systemBrown
            }
        }
    }
}
