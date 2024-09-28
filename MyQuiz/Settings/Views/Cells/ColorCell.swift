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
        self.setWidth(50)
        self.setHeight(50)
        
        colorView.layer.cornerRadius = 25
        
        addSubview(colorView)
        colorView.pin(to: self)
    }
}
