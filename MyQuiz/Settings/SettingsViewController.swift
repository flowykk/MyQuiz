//
//  SettingsViewController.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation
import UIKit

protocol SettingsViewControllerProtocol: AnyObject {
    var presenter: SettingsPresenterProtocol? { get set }
}

final class SettingsViewController: UIViewController, SettingsViewControllerProtocol {
    var presenter: SettingsPresenterProtocol?
    
    private let colorsLabel = UILabel()
    private let colorsCollectionView = ColorsCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsCollectionView.presenter = presenter
        
        configureUI()
    }
}

extension SettingsViewController {
    @objc
    private func backButtonTapped() {
        presenter?.backButtonTapped()
    }
}

extension SettingsViewController {
    private func configureUI() {
        view.backgroundColor = Colors.backgroundColor
        
        configureNavigationItem()
        configureBackButton()
        
        configureColorsLabel()
        configureColorsCollectionView()
    }
    
    private func configureNavigationItem() {
        navigationItem.hidesBackButton = true
        navigationItem.title = "Settings"
    }
    
    private func configureBackButton() {
        let largeFont     = UIFont.systemFont(ofSize: 16, weight: .black)
        let configuration = UIImage.SymbolConfiguration(font: largeFont)
        let image         = UIImage(systemName: "chevron.left", withConfiguration: configuration)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: image,
            style: .plain,
            target: self,
            action: #selector(backButtonTapped))
        navigationItem.leftBarButtonItem?.tintColor = Colors.labelsColor
    }
    
    private func configureColorsLabel() {
        colorsLabel.text = "Accent Color"
        colorsLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        colorsLabel.textAlignment = .left
        colorsLabel.textColor = Colors.labelsColor
        
        view.addSubview(colorsLabel)
        colorsLabel.pinTop(to: view.safeAreaLayoutGuide.topAnchor, 15)
        colorsLabel.pinLeft(to: view.leadingAnchor, 15)
    }
    
    private func configureColorsCollectionView() {
        view.addSubview(colorsCollectionView)
        colorsCollectionView.pinHorizontal(to: view, 10)
        colorsCollectionView.pinTop(to: colorsLabel.bottomAnchor, 5)
    }
}
