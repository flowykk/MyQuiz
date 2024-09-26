//
//  CategoriesEnum.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation

// MARK: - CategoriesEnum with Topics' names
enum CategoriesEnum: String, CaseIterable {
    case basic                  = "Основы"
    case integersAndBooleans    = "Числовые и логические типы"
    case basicOperators         = "Базовые операторы"
    case rangeOperators         = "Операторы диапазона"
    case booleanOperators       = "Логические операторы"
    case stringAndCharacters    = "Строки и символы"
    case collections            = "Коллекции, массивы"
    case sets                   = "Множества"
    case dictionaries           = "Словари"
    case tuples                 = "Кортежи"
    case controlFlow            = "Управление потоком"
    case optionals              = "Опциональные типы"
    case functions              = "Функции"
    case closures               = "Замыкания"
    case enums                  = "Перечисления"
    case structuresAndClasses   = "Структуры и классы"
    case properties             = "Свойства"
    case methods                = "Методы"
    case subscripts             = "Сабскрипты"
    case inheritance            = "Наследование"
    case initialization         = "Инициализация"
    case deinitialization       = "Деинициализация"
    case errorHandling          = "Обработка ошибок"
    case concurrency            = "Согласованность"
    case optionalChaining       = "Опциональная последовательность"
    case arc                    = "Автоматический подсчет ссылок"
    case typeCasting            = "Приведение типов"
    case nestedTypes            = "Вложенные типы"
    case extensions             = "Расширения"
    case opaqueType             = "Непрозрачные типы"
    case generics               = "Универсальные шаблоны"
    case protocols              = "Протоколы"
    case accessControl          = "Контроль доступа"
    case memorySafety           = "Безопасность хранения"
    case advancedOperators      = "Продвинутые операторы"
    case macros                 = "Макросы"
        
    case patterns               = "Паттерны: Общие вопросы"
    case creationalPatterns     = "Порождающие паттерны"
    case structuralPatterns     = "Структурные паттерны"
    case behavioralPatterns     = "Поведенческие паттерны"
    case antipatterns           = "Антипаттерны"
        
    case extremeProgramming     = "Extreme Programming"
    case masvs                  = "Мобильная безопасность"
    case multithreading         = "Многопоточность"
        
    case controllerLifecycle    = "View Controller Lifecycle"
    case appLifecycle           = "App Lifecycle"
    case boundsAndFrame         = "Bounds and Frame"
    case uiview                 = "UIView"
    case autoLayout             = "Auto Layout"
    case dependencyInjection    = "DI - Внедрение зависимостей"
    case inversionOfControl     = "IoC - Инверсия управления"
    case serviceLocator         = "SL - Сервис локатор"
    
    case swiftUIEssentials      = "SwiftUI Essentials"
    case swiftUIDrawing         = "Drawing and Animation"
    case swiftUILayout          = "App Design and Layout"
    case swiftUIFrameworks      = "Framework Integration"
    
    case apns                   = "Apple Push Notification Service"
    case fcm                    = "Firebase Cloud Messaging"
    case interviewJunior        = "Junior cобеседование"
    case interviewMiddle        = "Middle собеседование"
    case interviewSenior        = "Senior собеседование"
    case interviewJuniorPlus    = "Junior+ cобеседование"
    case interviewMiddlePlus    = "Middle+ cобеседование"
    
    case networking             = "Работа с сетью"
    case rxswift                = "RXSwift"
    case combine                = "Combine"
}
