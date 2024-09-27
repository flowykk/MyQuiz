//
//  SettingsPresenter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation

protocol SettingsPresenterProtocol: AnyObject {
    var router: SettingsRouterProtocol? { get set }
    var interactor: SettingsInteractorProtocol? { get set }
    var view: SettingsViewControllerProtocol? { get set }
}

final class SettingsPresenter: SettingsPresenterProtocol {
    var router: SettingsRouterProtocol?
    var interactor: SettingsInteractorProtocol?
    var view: SettingsViewControllerProtocol?
}
