//
//  QuestionPresenter.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 23.09.2024.
//

import Foundation

// MARK: - QuestionPresenterProtocol
protocol QuestionPresenterProtocol: AnyObject {
    var view: QuestionViewControllerProtocol? { get set }
    var router: QuestionRouterProtocol? { get set }
    var interactor: QuestionInteractorProtocol? { get set }
    
    func interactorDidFetchQuestions(with questions: [Question])
    func setTopic(by topic: Topic)
    
    func optionSelected(withAnswer answer: String) -> Bool
    func backButtonTapped()
    func infoButtonTapped(with helpText: String)
    
    func showAlert(helpText: String, isCorrect: Bool)
    func showStopTestAlert()
    func showQuitTestAlert()
}

// MARK: - QuestionPresenterProtocol Implementation
final class QuestionPresenter: QuestionPresenterProtocol {
    var view: QuestionViewControllerProtocol?
    var router: QuestionRouterProtocol?
    var interactor: QuestionInteractorProtocol? {
        didSet {
            interactor?.getQuestions(with: view!.topic.name)
        }
    }
    
    func interactorDidFetchQuestions(with questions: [Question]) {
        view?.setQuestions(with: questions)
    }
    
    func setTopic(by topic: Topic) {
        view?.setTopic(topic: topic)
    }
    
    func optionSelected(withAnswer answer: String) -> Bool {
        guard let view else { return false }
        let question = view.questions[view.currentQuestionIndex]
        let expectedAnswer = question.optionA
        
        let isCorrect = answer == expectedAnswer
        guard !view.isAnswered else { return isCorrect }
        
        if isCorrect {
            view.correctAnswers += 1
            
            DatabaseService.shared.updateTopic(topic: view.topic, by: max(
                view.correctAnswers,
                view.topic.correctAnswers
            ))
        } else {
            view.incorrectAnswers += 1
        }
        view.updateCountingLabels()
        
        return isCorrect
    }
    
    func showAlert(helpText: String, isCorrect: Bool) {
        router?.showAlert(helpText: helpText, isCorrect: isCorrect)
    }
    
    func showStopTestAlert() {
        router?.showStopTestAlert()
    }
    
    func showQuitTestAlert() {
        router?.showQuitTestAlert()
    }
    
    func backButtonTapped() {
        router?.navigateToInitial()
    }
    
    func infoButtonTapped(with helpText: String) {
        router?.showInfoAlert(with: helpText)
    }
}
