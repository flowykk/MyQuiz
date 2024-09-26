//
//  QuestionEntity.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 23.09.2024.
//

import Foundation

// MARK: - Question Entity
struct Question: Codable {
    let question: [String]
    let image: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let id: Int
    var links: [String]?
    let helpText: String
}
