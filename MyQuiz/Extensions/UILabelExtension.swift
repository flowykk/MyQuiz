//
//  UILabelExtension.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation
import UIKit

// MARK: - Extension for UILabel
extension UILabel {
    func halfTextColorChange (fullText : String, changeText : String, color: UIColor) {
        let range = fullText.range(of: changeText)
        guard let range else { return }
        let startIndex = range.lowerBound
        let position = fullText.distance(from: fullText.startIndex, to: startIndex)
        
        let attribute = NSMutableAttributedString.init(string: fullText); attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range:NSRange(location: position, length: changeText.count))
        self.attributedText = attribute
    }
}
