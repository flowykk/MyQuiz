//
//  DatabaseService.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 25.09.2024.
//

import Foundation
import SwiftData

enum FetchError: Error {
    case noData
}

// MARK: - Database Model for SwiftData
final class DatabaseService {
    static var shared = DatabaseService()
    var container: ModelContainer?
    var context: ModelContext?
    
    init() {
        do {
            let schema = Schema([Topic.self])
            container = try ModelContainer(for: schema, configurations: [])
            
            if let container { context = ModelContext(container) }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchAllTopics(completion: @escaping (Result<[Topic], Error>) -> ()) {
        let descriptor = FetchDescriptor<Topic>()
        
        do {
            let data = try context?.fetch(descriptor)
            guard let data else {
                completion(.failure(FetchError.noData))
                return
            }
            completion(.success(data))
        } catch {
            completion(.failure(error))
        }
    }
    
    func clear() {
        do {
            try context?.delete(model: Topic.self)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func saveTopic(name: String) {
        context?.insert(Topic(name: name))
    }
    
    func updateTopic(topic: Topic, by answers: Int) {
        topic.correctAnswers = answers
        
        do {
            try context?.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func deleteTask(topic: Topic) {
        context?.delete(topic)
    }
}

