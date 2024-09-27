//
//  ColorCell.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation
import UIKit

final class ColorCell: UICollectionViewCell {
    static let identifier: String = "ColorCell"
    
    private let colorView = UIView()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setColor(with color: UIColor) {
        colorView.backgroundColor = color
    }
    
    func getColor() -> UIColor {
        return colorView.backgroundColor ?? .white
    }
}

extension ColorCell {
    private func configure() {
        self.setWidth(60)
        self.setHeight(60)
        
        colorView.layer.cornerRadius = 30
        colorView.layer.borderWidth = 3
        colorView.layer.borderColor = UIColor.systemGray3.cgColor
        
        addSubview(colorView)
        colorView.pin(to: self)
    }
}
