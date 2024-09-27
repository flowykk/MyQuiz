//
//  SettingsRouter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 27.09.2024.
//

import Foundation
import UIKit

typealias SettingsEntryPoint = UIViewController & SettingsViewControllerProtocol

protocol SettingsRouterProtocol: AnyObject {
    var entry: SettingsEntryPoint? { get }
    
    static func start() -> SettingsRouterProtocol
    
    func navigateToInitial()
}

final class SettingsRouter: SettingsRouterProtocol {
    var entry: SettingsEntryPoint?
    
    static func start() -> SettingsRouterProtocol {
        let router = SettingsRouter()
        
        let view: SettingsViewControllerProtocol = SettingsViewController()
        let interactor: SettingsInteractorProtocol = SettingsInteractor()
        let presenter: SettingsPresenterProtocol = SettingsPresenter()
        
        interactor.presenter = presenter
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        router.entry = view as? SettingsEntryPoint
        
        return router
    }
    
    func navigateToInitial() {
        entry?.navigationController?.popViewController(animated: true)
    }
}
