//
//  SettingsPresenter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation
import UIKit

protocol SettingsPresenterProtocol: AnyObject {
    var router: SettingsRouterProtocol? { get set }
    var interactor: SettingsInteractorProtocol? { get set }
    var view: SettingsViewControllerProtocol? { get set }
    
    func backButtonTapped()
    func changeAccentColor(with color: UIColor)
}

final class SettingsPresenter: SettingsPresenterProtocol {
    var router: SettingsRouterProtocol?
    var interactor: SettingsInteractorProtocol?
    var view: SettingsViewControllerProtocol?
    
    func backButtonTapped() {
        router?.navigateToInitial()
    }
    
    func changeAccentColor(with color: UIColor) {
        Colors.accentColor = color
    }
}
