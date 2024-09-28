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
    
    var topicsTableView: TopicTableView? { get set }
    
    func fetchData()
    
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
    var interactor: InitialInteractorProtocol?
    var view: InitialViewControllerProtocol?
    
    var topicsTableView: TopicTableView?
    
    func fetchData() {
        interactor?.getCategories()
        interactor?.getTopics()
    }
    
    func interactorDidFetchCategories(with categories: [String]) {
        topicsTableView?.updateCategories(with: categories)
    }
    
    func interactorDidFetchTopics(with topics: [Topic]) {
        topicsTableView?.updateTopics(with: topics)
    }
    
    func topicTapped(with topic: Topic) {
        router?.navigateToQuestion(with: topic)
    }
    
    func settingsButtonTapped() {
        router?.navigateToSettings()
    }
    
    func showClearDataAlert() {
        router?.showClearDataAlert()
        topicsTableView?.updateTableView()
    }
    
    func clearTopicsData() {
        DatabaseService.shared.clearAllTopics()
        interactor?.getTopics()
    }
}
