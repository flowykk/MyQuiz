//
//  ArrayExtension.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation

// MARK: - Extension for Array<String>
extension Array where Element == String {
    mutating func removeEmptyStrings() {
        self = self.filter { !$0.trimmingCharacters(in: .whitespaces).isEmpty }
    }
}

// MARK: - Extension for Array<Topic>
extension Array where Element == Topic {
    func getTopicsByCategory(_ category: String) -> [Topic] {
        var result = [Topic]()
        
        for topic in self {
            if topic.getCategory() == category {
                result.append(topic)
            }
        }
        
        return result.sorted()
    }
}
