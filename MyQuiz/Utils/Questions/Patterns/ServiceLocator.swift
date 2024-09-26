//
//  ServiceLocator.swift
//  Swifty-Quiz
//
//  Created by Евгений Никитин on 28.01.2022.
//  Copyright © 2022 Evel-Devel. All rights reserved.
//

import Foundation

final class ServiceLocator {
    static func getQuestions() -> [Question] {
        return [
            Question(question: ["При использовании Service Locator мы внедряем все зависимости извне. Так ли это?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 774833432,
                     helpText: """
                     Нет. Когда говорят про DI в iOS-проектах, часто приводят в пример Service Locator (SL) — паттерн, суть которого в наличии объекта-реестра, к которому обращаются объекты для получения зависимостей.
                     
                     Объект-реестр знает, как получить все зависимости, которые могут потребоваться.
                     
                     Ключевым отличием паттернов SL и DI является то, что к локатору обращаются явно внутри класса и достают из него необходимые зависимости. При DI же, наоборот, зависимости внедряются извне.
                     """),
            
            Question(question: ["При использовании Service Locator мы явным образом обращаемся внутри класса к локатору и достаем из него необходимые зависимости. Это так?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 561063881,
                     helpText: """
                     Да. Когда говорят про DI в iOS-проектах, часто приводят в пример Service Locator (SL) — паттерн, суть которого в наличии объекта-реестра, к которому обращаются объекты для получения зависимостей.
                     
                     Объект-реестр знает, как получить все зависимости, которые могут потребоваться.
                     
                     Ключевым отличием паттернов SL и DI является то, что к локатору обращаются явно внутри класса и достают из него необходимые зависимости. При DI же, наоборот, зависимости внедряются извне.
                     """),
            
            Question(question: ["Как хранятся зависимости внутри Service Locator?"],
                     image: "",
                     optionA: "В словаре",
                     optionB: "В массиве",
                     optionC: "В наборе",
                     optionD: "",
                     id: 878492813,
                     helpText: """
                     В словаре. При реализации Service Locator внутри него находится словарь, где ключом является строка, содержащая имя типа, а значением — объект, который мы регистрируем в локаторе.
                     
                     Чтобы получить какую-то зависимость, нужно ее сначала зарегистрировать. Зависимости, как правило, регистрируются в одном месте на старте приложения.
                     """),
            
            Question(question: ["Надо регистрировать зависимость в Service Locator-е преждем, чем ее использовать?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "На наше усмотрение",
                     optionD: "",
                     id: 602051750,
                     helpText: """
                     Да. При реализации Service Locator внутри него находится словарь, где ключом является строка, содержащая имя типа, а значением — объект, который мы регистрируем в локаторе.
                     
                     Чтобы получить какую-то зависимость, нужно ее сначала зарегистрировать. Зависимости, как правило, регистрируются в одном месте на старте приложения.
                     """),
            
            Question(question: ["В какой момент удобнее всего зарегистрировать все зависимости, используемые Service Locator-ом?"],
                     image: "",
                     optionA: "На старте приложения",
                     optionB: "В момент обращения",
                     optionC: "Регистрация необязательна",
                     optionD: "",
                     id: 491906315,
                     helpText: """
                     На старте приложения. При реализации Service Locator внутри него находится словарь, где ключом является строка, содержащая имя типа, а значением — объект, который мы регистрируем в локаторе.
                     
                     Чтобы получить какую-то зависимость, нужно ее сначала зарегистрировать. Зависимости, как правило, регистрируются в одном месте на старте приложения.
                     """),
            
            Question(question: ["Что произойдет быстрее при использовании Service Locator?"],
                     image: "",
                     optionA: "Регистрация зависимости",
                     optionB: "Получение зависимости",
                     optionC: "",
                     optionD: "",
                     id: 491906315,
                     helpText: "Регистрация зависимости. При реализации Service Locator вы будете регистрировать зависимости где-то в одной точке при старте приложения и позже получать их через локатор."),
            
            Question(question: ["Можем ли мы удобным образом тестировать наше приложение при использовании сервис локатора (Service Locator, SL)?"],
                     image: "",
                     optionA: "Да, тестировать удобно",
                     optionB: "Нет, зависимости не подменяются",
                     optionC: "Не влияет на тестирование",
                     optionD: "",
                     id: 122444122,
                     helpText: """
                     Да, тестировать удобно. Плюсы использования Service Locator:
                     
                     - Удобно тестировать — можно подменить зависимости при регистрации на моки.
                     - Можно получить любую необходимую зависимость, скрывая от пользователя детали создания объекта-зависимости.
                     - Избавляет от необходимости использовать сервисы-синглтоны.
                     """),
            
            Question(question: ["Является ли сервис локатор в конечном итоге god object?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 832214964,
                     helpText: """
                     Да. Минусы использования Service Locator: Является god-объектом, который знает слишком много и имеет доступ к любому объекту.
                     
                     А значит, все, кто имеет к нему доступ, получают те же возможности. В сочетании со свойством синглтона проблема усугубляется.
                     
                     Способствует созданию внутренних неявных зависимостей, что приводит к неявной связанности (coupling), которая приводит к неявной сложности. Ошибки в рантайме: если вы резолвите зависимость, которую не регистрировали, то узнаете об ошибке только в рантайме.
                     """),
            
            Question(question: ["Использование Service Locator приводит к появлениею неявной связанности, что в свою очередь приводит к неявной сложности. Так ли это?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 239109591,
                     helpText: """
                     Да. Минусы использования Service Locator: Способствует созданию внутренних неявных зависимостей, что приводит к неявной связанности (coupling), которая приводит к неявной сложности.
                     
                     Является god-объектом, который знает слишком много и имеет доступ к любому объекту. А значит, все, кто имеет к нему доступ, получают те же возможности.
                     
                     В сочетании со свойством синглтона проблема усугубляется. Ошибки в рантайме: если вы резолвите зависимость, которую не регистрировали, то узнаете об ошибке только в рантайме.
                     """),
            
            Question(question: ["Если вы попытаетесь использовать зависимость, которую не регистрировали в сервис локаторе - что вы получите?"],
                     image: "",
                     optionA: "Runtime error",
                     optionB: "Compile error",
                     optionC: "Warning",
                     optionD: "",
                     id: 239109591,
                     helpText: """
                     Runtime error. Минусы использования Service Locator: Ошибки в рантайме: если вы резолвите зависимость, которую не регистрировали, то узнаете об ошибке только в рантайме.
                     
                     Является god-объектом, который знает слишком много и имеет доступ к любому объекту. А значит, все, кто имеет к нему доступ, получают те же возможности.
                     
                     В сочетании со свойством синглтона проблема усугубляется. Способствует созданию внутренних неявных зависимостей, что приводит к неявной связанности (coupling), которая приводит к неявной сложности.
                     """),
            
            Question(question: ["Можем ли мы внедрить Сервис локатор как зависимость Constructor Injection, чтобы потом обращаться к нему внутри класса?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 710810423,
                     helpText: """
                     Да. SL не обязательно должен быть синглтоном. Мы можем, например, внедрять его в объекты через Constructor Injection.
                     
                     Но тогда зависимости нашего класса все еще остаются неявными. Еще один недостаток SL — необходимость использовать implicitly unwrapped optional либо при каждом резолве проверять опционал на nil.
                     
                     Дело в том, что мы никогда не знаем, регистрировали ли мы нужный нам сервис в локаторе или нет, пока не попробуем зарезолвить его. Мы не получим никаких предупреждений или ошибок при сборке, если какой-то сервис не был зарегистрирован, — просто поймаем краш в рантайме.
                     """),
            
            Question(question: ["Если мы используем Service Locator - стабильность нашего класса становится неопределенной. Так ли это?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "Стабильность не меняется",
                     optionD: "",
                     id: 833401572,
                     helpText: """
                     Да. Когда наш класс использует сервис локатор, стабильность класса становится неопределенной.
                     
                     Наш класс, теоретически, может использовать что угодно, поэтому изменение любого класса (или интерфейса) в нашем проекте может затронуть произвольное количество классов и модулей.
                     
                     Локатор скрывает внутри себя реализацию, зависимости становятся неочевидными. Требования взаимодействия объектов усложняются.
                     """),
            
            Question(question: ["Использование сервис локатора облегчает или усложняет требования взаимодействия между объектами в коде?"],
                     image: "",
                     optionA: "Усложняет",
                     optionB: "Облегчает",
                     optionC: "Взаимодействие не меняется",
                     optionD: "",
                     id: 640496686,
                     helpText: "Усложняет. Локатор скрывает внутри себя реализацию, зависимости становятся неочевидными. Требования взаимодействия объектов усложняются.")
        ]
    }
}
