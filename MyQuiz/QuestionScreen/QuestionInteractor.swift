//
//  QuestionInteractor.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 23.09.2024.
//

import Foundation

// MARK: - QuestionInteractorProtocol
protocol QuestionInteractorProtocol: AnyObject {
    var presenter: QuestionPresenterProtocol? { get set }
    
    func getQuestions(with topic: String) 
}

// MARK: - QuestionInteractorProtocol Implementation
final class QuestionInteractor: QuestionInteractorProtocol {
    var presenter: QuestionPresenterProtocol?

    func getQuestions(with topic: String) {
        let currentTopic = Topic(name: topic)
        let questions = currentTopic.getQuestions()
        
        presenter?.interactorDidFetchQuestions(with: questions)
    }
}
