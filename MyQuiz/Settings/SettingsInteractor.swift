//
//  SettingsInteractor.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation

protocol SettingsInteractorProtocol: AnyObject {
    var presenter: SettingsPresenterProtocol? { get set }
}

final class SettingsInteractor: SettingsInteractorProtocol {
    var presenter: SettingsPresenterProtocol?
}
