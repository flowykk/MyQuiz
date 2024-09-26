//
//  UIProgressBar.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import UIKit

final class UIProgressBar: UIView {
    private let trackView = UIView()
    private let tintView = UIView()
    
    private var tintConstraint = NSLayoutConstraint()
    private let width = UIScreen.main.bounds.width * 0.90
    
    var progress: CGFloat = 0 {
        didSet {
            setProgress()
        }
    }
    var maxValue: CGFloat = 100
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        configure()
    }
}

extension UIProgressBar {
    private func configure() {
        setWidth(width)
        setHeight(10)
        
        trackView.layer.cornerRadius = 5
        tintView.layer.cornerRadius  = 5
        
        trackView.backgroundColor = .systemGray5
        tintView.backgroundColor  = .systemYellow
        
        trackView.addSubview(tintView)
        self.addSubview(trackView)
        
        trackView.pinTop(to: topAnchor)
        trackView.pinBottom(to: bottomAnchor)
        trackView.pinLeft(to: leadingAnchor)
        trackView.pinRight(to: trailingAnchor)
        
        tintView.pinTop(to: trackView.topAnchor)
        tintView.pinBottom(to: trackView.bottomAnchor)
        tintView.pinLeft(to: trackView.leadingAnchor)
        
        tintConstraint = tintView.trailingAnchor.constraint(equalTo: trackView.trailingAnchor)
    }
    
    func setProgress() {
        tintConstraint.constant = -1 * (width - (width / maxValue) * progress)
        tintConstraint.isActive = true
    }
}
