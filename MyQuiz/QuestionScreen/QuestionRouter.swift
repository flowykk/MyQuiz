//
//  QuestionRouter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 23.09.2024.
//

import Foundation
import UIKit

typealias QuestionEntryPoint = QuestionViewControllerProtocol & UIViewController

// MARK: - QuestionRouterProtocol
protocol QuestionRouterProtocol: AnyObject {
    var entry: QuestionEntryPoint? { get }
    
    static func start(with topic: Topic) -> QuestionRouterProtocol
    
    func showAlert(helpText: String, isCorrect: Bool)
    func showStopTestAlert()
    func showQuitTestAlert()
    func showInfoAlert(with helpText: String)
        
    func navigateToInitial()
}

// MARK: - QuestionRouterProtocol Implementation
final class QuestionRouter: QuestionRouterProtocol {
    weak var entry: QuestionEntryPoint?
    
    static func start(with topic: Topic) -> QuestionRouterProtocol {
        let router = QuestionRouter()
        
        let view: QuestionViewControllerProtocol = QuestionViewController()
        let presenter: QuestionPresenterProtocol = QuestionPresenter()
        let interactor: QuestionInteractorProtocol = QuestionInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.view = view
        presenter.setTopic(by: topic)
        presenter.interactor = interactor
        presenter.router = router
        
        router.entry = view as? QuestionEntryPoint

        return router
    }
    
    func showAlert(helpText: String, isCorrect: Bool) {
        let message = isCorrect ? "Вы хотите перейти к следующему вопросу?" : "\(helpText)\n\nПерейти к следующему вопросу?"
        let title = isCorrect ? "Ответ правильный!" : "Ответ неправильный!"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "Нет", style: .cancel) { [weak self] _ in
            self?.entry?.reset()
        }
        
        let yesAction = UIAlertAction(title: "Да", style: .default) { [weak self] _ in
            self?.entry?.next()
        }
        
        alert.addAction(noAction)
        alert.addAction(yesAction)
        
        entry?.present(alert, animated: true, completion: nil)
    }
    
    func showStopTestAlert() {
        let alert = UIAlertController(
            title: "Тест завершен",
            message: "Вы ответили на все вопросы! Желаете пройти тест ещё раз?",
            preferredStyle: .alert)
        
        let retryAction = UIAlertAction(title: "Да", style: .default) { [weak self] _ in
            self?.entry?.resetTest()
        }
        
        let leaveAction = UIAlertAction(title: "Выйти", style: .destructive) { [weak self] _ in
            self?.entry?.presenter?.backButtonTapped()
        }
        
        alert.addAction(leaveAction)
        alert.addAction(retryAction)
        
        entry?.present(alert, animated: true, completion: nil)
    }
    
    func showQuitTestAlert() {
        let alert = UIAlertController(
            title: "Выйти из теста?",
            message: "Статистика будет сохранена!",
            preferredStyle: .alert)
        
        let continueAction = UIAlertAction(title: "Остаться", style: .default) { _ in
            alert.dismiss(animated: true)
        }
        
        let leaveAction = UIAlertAction(title: "Выйти", style: .destructive) { [weak self] _ in
            self?.entry?.presenter?.backButtonTapped()
        }
        
        alert.addAction(leaveAction)
        alert.addAction(continueAction)
        
        entry?.present(alert, animated: true, completion: nil)
    }
    
    func showInfoAlert(with helpText: String) {
        let title = "Подсказка"
        let message = helpText
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ок", style: .default) { _ in
            alert.dismiss(animated: true)
        }
        
        alert.addAction(okAction)
        
        entry?.present(alert, animated: true, completion: nil)
    }
    
    func navigateToInitial() {
        entry?.navigationController?.popViewController(animated: true)
    }
}
