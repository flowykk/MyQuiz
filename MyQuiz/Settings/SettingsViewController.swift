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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        configureUI()
    }
}

extension SettingsViewController {
    private func configureUI() {
        configureNavigationItem()
    }
    
    private func configureNavigationItem() {
        navigationItem.hidesBackButton = true
    }
}
