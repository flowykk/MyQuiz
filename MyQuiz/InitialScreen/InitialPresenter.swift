//
//  InitialPresenter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation

// MARK: - InitialPresenterProtocol
protocol InitialPresenterProtocol: AnyObject {
    var router: InitialRouterProtocol? { get set }
    var interactor: InitialInteractorProtocol? { get set }
    var view: InitialViewControllerProtocol? { get set }
    
    func interactorDidFetchCategories(with categories: [String])
    func interactorDidFetchTopics(with topics: [Topic])
    
    func topicTapped(with topic: Topic)
    func settingsButtonTapped()
    
    func showClearDataAlert()
    func clearTopicsData()
}

// MARK: - InitialPresenterProtocol Implementation
final class InitialPresenter: InitialPresenterProtocol {
    var router: InitialRouterProtocol?
    var interactor: InitialInteractorProtocol? {
        didSet {
            interactor?.getCategories()
            interactor?.getTopics()
        }
    }
    var view: InitialViewControllerProtocol?
    
    func interactorDidFetchCategories(with categories: [String]) {
        view?.updateCategories(with: categories)
    }
    
    func interactorDidFetchTopics(with topics: [Topic]) {
        view?.updateTopics(with: topics)
    }
    
    func topicTapped(with topic: Topic) {
        router?.navigateToQuestion(with: topic)
    }
    
    func settingsButtonTapped() {
        router?.navigateToSettings()
    }
    
    func showClearDataAlert() {
        router?.showClearDataAlert()
    }
    
    func clearTopicsData() {
        DatabaseService.shared.clearAllTopics()
        interactor?.getTopics()
    }
}
