//
//  InitialRouter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation
import UIKit

typealias InitialEntryPoint = InitialViewControllerProtocol & UIViewController

// MARK: - InitialRouterProtocol
protocol InitialRouterProtocol: AnyObject {
    var entry: InitialEntryPoint? { get }
    
    static func start() -> InitialRouterProtocol
    
    func showClearDataAlert()
    func navigateToQuestion(with topic: Topic)
}

// MARK: - InitialRouterProtocol Implementation
final class InitialRouter: InitialRouterProtocol {
    var entry: InitialEntryPoint?
    
    static func start() -> InitialRouterProtocol {
        let router = InitialRouter()
        
        let view: InitialViewControllerProtocol   = InitialViewController()
        let interactor: InitialInteractorProtocol = InitialInteractor()
        let presenter: InitialPresenterProtocol   = InitialPresenter()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.view       = view
        presenter.router     = router
        presenter.interactor = interactor
        
        router.entry = view as? InitialEntryPoint
        
        return router
    }
    
    func showClearDataAlert() {
        let alert = UIAlertController(
            title: "Сброс статистики",
            message: "Вы уверены, что хотите сбросить статистику? Все сохранённые данные будут удалены!",
            preferredStyle: .alert)
        
        let retryAction = UIAlertAction(title: "Отмена", style: .default) { _ in
            alert.dismiss(animated: true)
        }
        
        let leaveAction = UIAlertAction(title: "Да", style: .destructive) { [weak self] _ in
            self?.entry?.presenter?.clearTopicsData()
        }
        
        alert.addAction(leaveAction)
        alert.addAction(retryAction)
        
        entry?.present(alert, animated: true, completion: nil)
    }
    
    func navigateToQuestion(with topic: Topic) {
        let router = QuestionRouter.start(with: topic)
        let vc = router.entry
        
        entry?.navigationController?.pushViewController(vc!, animated: true)
    }
}
