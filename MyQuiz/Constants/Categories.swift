//
//  File.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation

// MARK: - Categories with Topics' objects
struct Categories {
    static let basic                  = Topic(name: "Основы")
    static let integersAndBooleans    = Topic(name: "Числовые и логические типы")
    static let basicOperators         = Topic(name: "Базовые операторы")
    static let rangeOperators         = Topic(name: "Операторы диапазона")
    static let booleanOperators       = Topic(name: "Логические операторы")
    static let stringAndCharacters    = Topic(name: "Строки и символы")
    static let collections            = Topic(name: "Коллекции, массивы")
    static let sets                   = Topic(name: "Множества")
    static let dictionaries           = Topic(name: "Словари")
    static let tuples                 = Topic(name: "Кортежи")
    static let controlFlow            = Topic(name: "Управление потоком")
    static let optionals              = Topic(name: "Опциональные типы")
    static let functions              = Topic(name: "Функции")
    static let closures               = Topic(name: "Замыкания")
    static let enums                  = Topic(name: "Перечисления")
    static let structuresAndClasses   = Topic(name: "Структуры и классы")
    static let properties             = Topic(name: "Свойства")
    static let methods                = Topic(name: "Методы")
    static let subscripts             = Topic(name: "Сабскрипты")
    static let inheritance            = Topic(name: "Наследование")
    static let initialization         = Topic(name: "Инициализация")
    static let deinitialization       = Topic(name: "Деинициализация")
    static let errorHandling          = Topic(name: "Обработка ошибок")
    static let concurrency            = Topic(name: "Согласованность")
    static let optionalChaining       = Topic(name: "Опциональная последовательность")
    static let arc                    = Topic(name: "Автоматический подсчет ссылок")
    static let typeCasting            = Topic(name: "Приведение типов")
    static let nestedTypes            = Topic(name: "Вложенные типы")
    static let extensions             = Topic(name: "Расширения")
    static let opaqueType             = Topic(name:  "Непрозрачные типы")
    static let generics               = Topic(name: "Универсальные шаблоны")
    static let protocols              = Topic(name: "Протоколы")
    static let accessControl          = Topic(name: "Контроль доступа")
    static let memorySafety           = Topic(name: "Безопасность хранения")
    static let advancedOperators      = Topic(name: "Продвинутые операторы")
    static let macros                 = Topic(name: "Макросы")

    static let patterns               = Topic(name: "Паттерны: Общие вопросы")
    static let creationalPatterns     = Topic(name: "Порождающие паттерны")
    static let structuralPatterns     = Topic(name: "Структурные паттерны")
    static let behavioralPatterns     = Topic(name: "Поведенческие паттерны")
    static let antipatterns           = Topic(name: "Антипаттерны")

    static let extremeProgramming     = Topic(name: "Extreme Programming")
    static let masvs                  = Topic(name: "Мобильная безопасность")
    static let multithreading         = Topic(name: "Многопоточность")

    static let controllerLifecycle    = Topic(name: "View Controller Lifecycle")
    static let appLifecycle           = Topic(name: "App Lifecycle")
    static let boundsAndFrame         = Topic(name: "Bounds and Frame")
    static let uiview                 = Topic(name: "UIView")
    static let autoLayout             = Topic(name: "Auto Layout")
    static let dependencyInjection    = Topic(name: "DI - Внедрение зависимостей")
    static let inversionOfControl     = Topic(name: "IoC - Инверсия управления")
    static let serviceLocator         = Topic(name: "SL - Сервис локатор")

    static let swiftUIEssentials      = Topic(name: "SwiftUI Essentials")
    static let swiftUIDrawing         = Topic(name: "Drawing and Animation")
    static let swiftUILayout          = Topic(name: "App Design and Layout")
    static let swiftUIFrameworks      = Topic(name: "Framework Integration")

    static let apns                   = Topic(name: "Apple Push Notification Service")
    static let fcm                    = Topic(name: "Firebase Cloud Messaging")
    static let interviewJunior        = Topic(name: "Junior cобеседование")
    static let interviewMiddle        = Topic(name: "Middle собеседование")
    static let interviewSenior        = Topic(name: "Senior собеседование")
    static let interviewJuniorPlus    = Topic(name: "Junior+ cобеседование")
    static let interviewMiddlePlus    = Topic(name: "Middle+ cобеседование")

    static let networking             = Topic(name: "Работа с сетью")
    static let rxswift                = Topic(name: "RXSwift")
    static let combine                = Topic(name: "Combine")
}
