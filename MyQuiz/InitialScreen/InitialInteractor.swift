//
//  InitialInteractor.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation

// MARK: - InitialInteractorProtocol
protocol InitialInteractorProtocol: AnyObject {
    var presenter: InitialPresenterProtocol? { get set }
    
    func getTopics()
    func getCategories()
}

// MARK: - InitialInteractorProtocol Implementation
final class InitialInteractor: InitialInteractorProtocol {
    var presenter: InitialPresenterProtocol?
    
    func getCategories() {
        presenter?.interactorDidFetchCategories(with: [
            "Swift",
            "UIKit",
            "SwiftUI",
            "Собеседование",
            "Паттерны",
            "Разное"
        ])
    }
    
    func getTopics() {
        let topics = [
            Categories.basic,
            Categories.integersAndBooleans,
            Categories.basicOperators,
            Categories.rangeOperators,
            Categories.booleanOperators,
            Categories.stringAndCharacters,
            Categories.collections,
            Categories.sets,
            Categories.dictionaries,
            Categories.tuples,
            Categories.controlFlow,
            Categories.optionals,
            Categories.functions,
            Categories.closures,
            Categories.enums,
            Categories.structuresAndClasses,
            Categories.properties,
            Categories.methods,
            Categories.subscripts,
            Categories.inheritance,
            Categories.initialization,
            Categories.deinitialization,
            Categories.errorHandling,
            Categories.concurrency,
            Categories.optionalChaining,
            Categories.arc,
            Categories.typeCasting,
            Categories.nestedTypes,
            Categories.extensions,
            Categories.opaqueType,
            Categories.generics,
            Categories.protocols,
            Categories.accessControl,
            Categories.memorySafety,
            Categories.advancedOperators,
            Categories.macros,

            Categories.interviewJunior,
            Categories.interviewMiddle,
            Categories.interviewSenior,
            Categories.interviewJuniorPlus,
            Categories.interviewMiddlePlus,

            Categories.controllerLifecycle,
            Categories.appLifecycle,
            Categories.boundsAndFrame,
            Categories.uiview,
            Categories.autoLayout,

            Categories.swiftUIEssentials,
            Categories.swiftUIDrawing,
            Categories.combine,

            Categories.extremeProgramming,
            Categories.apns,
            Categories.multithreading,
            Categories.rxswift,
            Categories.networking,
            Categories.masvs,

            Categories.patterns,
            Categories.creationalPatterns,
            Categories.structuralPatterns,
            Categories.behavioralPatterns,
            Categories.antipatterns,
            Categories.dependencyInjection,
            Categories.inversionOfControl,
            Categories.serviceLocator
        ]
        
        DatabaseService.shared.fetchAllTopics { result in
            switch result {
            case .success(let fetchedTopics):
                if fetchedTopics.isEmpty {
                    self.presenter?.interactorDidFetchTopics(with: topics)
                    
                    for topic in topics { DatabaseService.shared.saveTopic(name: topic.name) }
                    
                    print(1)
                    return
                }
                self.presenter?.interactorDidFetchTopics(with: fetchedTopics)
                print(2)
            case .failure:
                print(3)
                return
            }
        }
    }
}
