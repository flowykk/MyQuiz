//
//  TopicEntity.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation
import SwiftData

// MARK: - Topic SwiftData Entity
@Model
final class Topic: Comparable {
    var name: String
    var correctAnswers: Int
    
    init(name: String, correctAnswers: Int) {
        self.name = name
        self.correctAnswers = correctAnswers
    }
    
    convenience init(name: String) {
        self.init(name: name, correctAnswers: 0)
    }
    
    convenience init() {
        self.init(name: "Default")
    }
    
    func getOrderPosition() -> Int {
        switch name {
        case CategoriesEnum.basic.rawValue:                 return 1
        case CategoriesEnum.integersAndBooleans.rawValue:   return 2
        case CategoriesEnum.basicOperators.rawValue:        return 3
        case CategoriesEnum.rangeOperators.rawValue:        return 4
        case CategoriesEnum.booleanOperators.rawValue:      return 5
        case CategoriesEnum.stringAndCharacters.rawValue:   return 6
        case CategoriesEnum.collections.rawValue:           return 7
        case CategoriesEnum.sets.rawValue:                  return 8
        case CategoriesEnum.dictionaries.rawValue:          return 9
        case CategoriesEnum.tuples.rawValue:                return 10
        case CategoriesEnum.controlFlow.rawValue:           return 11
        case CategoriesEnum.optionals.rawValue:             return 12
        case CategoriesEnum.functions.rawValue:             return 13
        case CategoriesEnum.closures.rawValue:              return 14
        case CategoriesEnum.enums.rawValue:                 return 15
        case CategoriesEnum.structuresAndClasses.rawValue:  return 16
        case CategoriesEnum.properties.rawValue:            return 17
        case CategoriesEnum.methods.rawValue:               return 18
        case CategoriesEnum.subscripts.rawValue:            return 19
        case CategoriesEnum.inheritance.rawValue:           return 20
        case CategoriesEnum.initialization.rawValue:        return 21
        case CategoriesEnum.deinitialization.rawValue:      return 22
        case CategoriesEnum.errorHandling.rawValue:         return 23
        case CategoriesEnum.concurrency.rawValue:           return 24
        case CategoriesEnum.optionalChaining.rawValue:      return 25
        case CategoriesEnum.arc.rawValue:                   return 26
        case CategoriesEnum.typeCasting.rawValue:           return 27
        case CategoriesEnum.nestedTypes.rawValue:           return 28
        case CategoriesEnum.extensions.rawValue:            return 29
        case CategoriesEnum.opaqueType.rawValue:            return 30
        case CategoriesEnum.generics.rawValue:              return 31
        case CategoriesEnum.protocols.rawValue:             return 32
        case CategoriesEnum.accessControl.rawValue:         return 33
        case CategoriesEnum.memorySafety.rawValue:          return 34
        case CategoriesEnum.advancedOperators.rawValue:     return 35
        case CategoriesEnum.macros.rawValue:                return 36
            
        case CategoriesEnum.patterns.rawValue:              return 1
        case CategoriesEnum.creationalPatterns.rawValue:    return 2
        case CategoriesEnum.structuralPatterns.rawValue:    return 3
        case CategoriesEnum.behavioralPatterns.rawValue:    return 4
        case CategoriesEnum.antipatterns.rawValue:          return 5
        case CategoriesEnum.dependencyInjection.rawValue:   return 6
        case CategoriesEnum.inversionOfControl.rawValue:    return 7
        case CategoriesEnum.serviceLocator.rawValue:        return 8

        case CategoriesEnum.controllerLifecycle.rawValue:   return 1
        case CategoriesEnum.appLifecycle.rawValue:          return 2
        case CategoriesEnum.boundsAndFrame.rawValue:        return 3
        case CategoriesEnum.uiview.rawValue:                return 4
        case CategoriesEnum.autoLayout.rawValue:            return 5
            
        case CategoriesEnum.swiftUIEssentials.rawValue: return 1
        case CategoriesEnum.swiftUIDrawing.rawValue:    return 2
        case CategoriesEnum.combine.rawValue:           return 3

        case CategoriesEnum.networking.rawValue:            return 1
        case CategoriesEnum.apns.rawValue:                  return 2
        case CategoriesEnum.rxswift.rawValue:               return 3
        case CategoriesEnum.extremeProgramming.rawValue:    return 4
        case CategoriesEnum.masvs.rawValue:                 return 5
        case CategoriesEnum.multithreading.rawValue:        return 6
            
        case CategoriesEnum.interviewJunior.rawValue:       return 1
        case CategoriesEnum.interviewMiddle.rawValue:       return 2
        case CategoriesEnum.interviewSenior.rawValue:       return 3
        case CategoriesEnum.interviewJuniorPlus.rawValue:   return 4
        case CategoriesEnum.interviewMiddlePlus.rawValue:   return 5

        default:
            return 0
        }
    }
    
    func getCategory() -> String {
        switch name {
        case CategoriesEnum.interviewJunior.rawValue,
            CategoriesEnum.interviewMiddle.rawValue,
            CategoriesEnum.interviewSenior.rawValue,
            CategoriesEnum.interviewJuniorPlus.rawValue,
            CategoriesEnum.interviewMiddlePlus.rawValue:
            return "Собеседование"
        case CategoriesEnum.controllerLifecycle.rawValue,
            CategoriesEnum.appLifecycle.rawValue,
            CategoriesEnum.boundsAndFrame.rawValue,
            CategoriesEnum.uiview.rawValue,
            CategoriesEnum.autoLayout.rawValue:
            return "UIKit"
        case CategoriesEnum.swiftUIEssentials.rawValue,
            CategoriesEnum.swiftUIDrawing.rawValue,
            CategoriesEnum.combine.rawValue:
            return "SwiftUI"
        case CategoriesEnum.extremeProgramming.rawValue,
            CategoriesEnum.apns.rawValue,
            CategoriesEnum.multithreading.rawValue,
            CategoriesEnum.rxswift.rawValue,
            CategoriesEnum.networking.rawValue,
            CategoriesEnum.masvs.rawValue:
            return "Разное"
        case CategoriesEnum.patterns.rawValue,
            CategoriesEnum.creationalPatterns.rawValue,
            CategoriesEnum.structuralPatterns.rawValue,
            CategoriesEnum.behavioralPatterns.rawValue,
            CategoriesEnum.antipatterns.rawValue,
            CategoriesEnum.dependencyInjection.rawValue,
            CategoriesEnum.inversionOfControl.rawValue,
            CategoriesEnum.serviceLocator.rawValue:
            return "Паттерны"
        default:
            return "Swift"
        }
    }
    
    func getQuestions() -> [Question] {
        switch name {
        case CategoriesEnum.basic.rawValue:
            return TheBasicsSet.getQuestions()
        case CategoriesEnum.integersAndBooleans.rawValue:
            return IntegersAndBooleansSet.getQuestions()
        case CategoriesEnum.basicOperators.rawValue:
            return BasicOperatorsSet.getQuestions()
        case CategoriesEnum.rangeOperators.rawValue:
            return RangeOperatorsSet.getQuestions()
        case CategoriesEnum.booleanOperators.rawValue:
            return BooleanOperatorsSet.getQuestions()
        case CategoriesEnum.stringAndCharacters.rawValue:
            return StringAndCharactersSet.getQuestions()
        case CategoriesEnum.collections.rawValue:
            return CollectionsSet.getQuestions()
        case CategoriesEnum.sets.rawValue:
            return SetsSet.getQuestions()
        case CategoriesEnum.dictionaries.rawValue:
            return DictionariesSet.getQuestions()
        case CategoriesEnum.tuples.rawValue:
            return TuplesSet.getQuestions()
        case CategoriesEnum.controlFlow.rawValue:
            return ControlFlowSet.getQuestions()
        case CategoriesEnum.optionals.rawValue:
            return OptionalTypesSet.getQuestions()
        case CategoriesEnum.functions.rawValue:
            return FunctionsSet.getQuestions()
        case CategoriesEnum.closures.rawValue:
            return ClosuresSet.getQuestions()
        case CategoriesEnum.enums.rawValue:
            return EnumerationsSet.getQuestions()
        case CategoriesEnum.structuresAndClasses.rawValue:
            return StructuresAndClassesSet.getQuestions()
        case CategoriesEnum.properties.rawValue:
            return PropertiesSet.getQuestions()
        case CategoriesEnum.methods.rawValue:
            return MethodsSet.getQuestions()
        case CategoriesEnum.subscripts.rawValue:
            return SubscriptsSet.getQuestions()
        case CategoriesEnum.inheritance.rawValue:
            return InheritanceSet.getQuestions()
        case CategoriesEnum.initialization.rawValue:
            return InitializationSet.getQuestions()
        case CategoriesEnum.deinitialization.rawValue:
            return DeinitializationSet.getQuestions()
        case CategoriesEnum.errorHandling.rawValue:
            return ErrorHandlingSet.getQuestions()
        case CategoriesEnum.concurrency.rawValue:
            return ConcurrencySet.getQuestions()
        case CategoriesEnum.optionalChaining.rawValue:
            return OptionalChainingSet.getQuestions()
        case CategoriesEnum.arc.rawValue:
            return ARCSet.getQuestions()
        case CategoriesEnum.typeCasting.rawValue:
            return TypeCastingSet.getQuestions()
        case CategoriesEnum.nestedTypes.rawValue:
            return NestedTypesSet.getQuestions()
        case CategoriesEnum.extensions.rawValue:
            return ExtensionsSet.getQuestions()
        case CategoriesEnum.opaqueType.rawValue:
            return OpaqueTypeSet.getQuestions()
        case CategoriesEnum.generics.rawValue:
            return GenericsSet.getQuestions()
        case CategoriesEnum.protocols.rawValue:
            return ProtocolsSet.getQuestions()
        case CategoriesEnum.accessControl.rawValue:
            return AccessControlSet.getQuestions()
        case CategoriesEnum.memorySafety.rawValue:
            return MemorySafetySet.getQuestions()
        case CategoriesEnum.advancedOperators.rawValue:
            return AdvancedOperatorsSet.getQuestions()
        case CategoriesEnum.macros.rawValue:
            return MacrosSet.getQuestions()
            
        case CategoriesEnum.patterns.rawValue:
            return BasicsAboutPatternsSet.getQuestions()
        case CategoriesEnum.creationalPatterns.rawValue:
            return CreationalPatternsSet.getQuestions()
        case CategoriesEnum.structuralPatterns.rawValue:
            return StructuralPatternsSet.getQuestions()
        case CategoriesEnum.behavioralPatterns.rawValue:
            return BehavioralPatternsSet.getQuestions()
        case CategoriesEnum.antipatterns.rawValue:
            return AntipatternsSet.getQuestions()
        case CategoriesEnum.extremeProgramming.rawValue:
            return ExtremeProgrammingSet.getQuestions()
        case CategoriesEnum.masvs.rawValue:
            return MobileSecuritySet.getQuestions()
        case CategoriesEnum.multithreading.rawValue:
            return Multithreading.getQuestions()
        case CategoriesEnum.controllerLifecycle.rawValue:
            return VCLifecycleSet.getQuestions()
        case CategoriesEnum.appLifecycle.rawValue:
            return AppLifecycleSet.getQuestions()
        case CategoriesEnum.boundsAndFrame.rawValue:
            return FramesAndBounds.getQuestions()
        case CategoriesEnum.uiview.rawValue:
            return UIViewSet.getQuestions()
        case CategoriesEnum.autoLayout.rawValue:
            return AutoLayout.getQuestions()
        case CategoriesEnum.dependencyInjection.rawValue:
            return DepenpencyInjection.getQuestions()
        case CategoriesEnum.inversionOfControl.rawValue:
            return InversionOfControl.getQuestions()
        case CategoriesEnum.serviceLocator.rawValue:
            return ServiceLocator.getQuestions()
            
        case CategoriesEnum.swiftUIEssentials.rawValue:
            return SwiftUIEssentials.getQuestions()
        case CategoriesEnum.swiftUIDrawing.rawValue:
            return DrawingAndAnimation.getQuestions()
            
        case CategoriesEnum.apns.rawValue:
            return APNS.getQuestions()
            
        case CategoriesEnum.interviewJunior.rawValue:
            return InterviewJunior.getQuestions()
        case CategoriesEnum.interviewMiddle.rawValue:
            return InterviewMiddle.getQuestions()
        case CategoriesEnum.interviewSenior.rawValue:
            return InterviewSenior.getQuestions()
        case CategoriesEnum.interviewJuniorPlus.rawValue:
            return InterviewJuniorPlus.getQuestions()
        case CategoriesEnum.interviewMiddlePlus.rawValue:
            return InterviewMiddlePlus.getQuestions()
            
        case CategoriesEnum.networking.rawValue:
            return Networking.getQuestions()
        case CategoriesEnum.rxswift.rawValue:
            return RXSwift.getQuestions()
        case CategoriesEnum.combine.rawValue:
            return Combine.getQuestions()
            
        default:
            return []
        }
    }
    
    static func < (lhs: Topic, rhs: Topic) -> Bool {
        lhs.getOrderPosition() < rhs.getOrderPosition()
    }
}
