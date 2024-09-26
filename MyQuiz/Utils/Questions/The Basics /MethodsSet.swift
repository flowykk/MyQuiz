
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

final class MethodsSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: ["Чем отличаются методы от функций?",
								"Функции отличаются от методов именно этим",
								"Отличие методов от функций"],
					 image: "",
					 optionA: "Методы связаны с типами",
					 optionB: "Функции привязаны к типам",
					 optionC: "Методы глобальнее функций",
					 optionD: "Методы нельзя объявлять в классах",
					 id: 771705222,
					 helpText: "Методы связаны с типами. Методы - это функции, которые связаны с определенным типом. Классы, структуры и перечисления - все они могут определять методы экземпляра, которые включают в себя определенные задачи и функциональность для работы с экземпляром данного типа."),
			
			Question(question: ["Могут ли классы определять методы типа?",
								"Могут ли структуры определять методы типа?",
								"Могут ли перечисления определять методы типа?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 994217053,
					 helpText: "Да. Классы, структуры и перечисления так же могут определить методы типа, которые связаны с самим типом. Методы типа работают аналогично методам класса в Objective-C."),
			
			Question(question: ["Имеем ли мы возможность определять методы и в структурах, и в классах, и в перечислениях?",
								"Объявлять методы в Swift мы можем и в структурах, и в классах, и в перечислениях, так ли это?",
								"Отличием Swift от Objective-C является возможность объявлять методы внутри структур и перечислений, так ли это?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 703951272,
                     helpText: """
                     Да. Дело в том, что структуры и перечисления могут определить методы в Swift, что является главным отличием от C или Objective-C. В Objective-C классы единственный тип, который может определять методы.
                     
                     В Swift вы можете выбирать, стоит ли вам определять класс, структуру или перечисление, и вы все равно, при любом раскладе, получаете возможность определения методов типа, который вы создадите.
                     """),
			
			Question(question: ["Методы экземпляра класса и функции имеют одинаковый синтаксис?",
								"Функции и методы экземпляра класса имеют одинаковый синтаксис, так ли это?",
								"В Swift функции и методы экземпляра имеют одинаковый синтаксис, так ли это?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 451596612,
                     helpText: """
                     Да. Методы экземпляра являются функциями, которые принадлежат экземплярам конкретного класса, структуры или перечисления.
                     
                     Они обеспечивают функциональность этих экземпляров, либо давая возможность доступа и изменения свойств экземпляра, либо обеспечивая функциональность экземпляра в соответствии с его целью. Методы экземпляра имеют абсолютно одинаковый синтаксис как и функции
                     """),
			
			Question(question: ["Где записывается метод экземпляра?",
								"Каким образом записывается метод экземпляра?"],
					 image: "",
					 optionA: "Внутри {} вашего типа",
					 optionB: "В расширении вашего типа",
					 optionC: "В имени вашего типа",
					 optionD: "В протоколе вашего типа",
					 id: 667675201,
					 helpText: "Внутри {} вашего типа. Вы пишете метод экземпляра внутри фигурных скобок типа, которому он принадлежит."),
			
			Question(question: ["Имеет ли метод экземпляра доступ к остальным методам экземпляра и свойствам этого типа?",
								"Метод экземпляра имеет доступ к остальным методам экземпляра и свойствам этого типа, так ли это?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "Неявно только к свойствам",
					 optionD: "Неявно только к методам",
					 id: 385304922,
					 helpText: "Да. Метод экземпляра имеет неявный доступ ко всем остальным методам экземпляра и свойствам этого типа."),
			
			Question(question: ["Можем ли мы вызывать метод экземпляра в изоляции, без самого экземпляра этого типа?",
								"Метод экземпляра может быть вызван не только для конкретного экземпляра типа, которому он принадлежит, но и в изоляции, так ли это?"],
					 image: "",
					 optionA: "Нет",
					 optionB: "Да",
					 optionC: "",
					 optionD: "",
					 id: 402447084,
					 helpText: "Нет. Метод экземпляра может быть вызван только для конкретного экземпляра типа, которому он принадлежит. Его нельзя вызвать в изоляции, без существующего экземпляра."),
			
			Question(question: ["Через какой синтаксис вызываются методы экземпляра класса?",
								"Методы экземпляра класса вызываются через этот синтаксис"],
					 image: "",
					 optionA: "Точечный синтаксис",
					 optionB: "Синтаксис инициализации",
					 optionC: "Литеральный синтаксис",
					 optionD: "Синтаксис сабскриптов",
					 id: 663018662,
					 helpText: "Точечный синтаксис. Вы можете вызвать методы экземпляра с тем же точечным синтаксисом, как и свойства."),
			
			Question(question: ["Может ли метод экземпляра иметь имя аргумента и ярлык аргумента одновременно?",
								"Метод экземпляра может иметь и имя аргумента, и ярлык аргумента, так ли это?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет, только имя",
					 optionC: "Нет, только ярлык",
					 optionD: "",
					 id: 344707491,
					 helpText: "Да. Параметры функций могут иметь и имя аргумента (для использования внутри функций), и ярлык аргумента (для использования при вызове функций). То же самое верно для имен параметров методов, потому как методы те же самые функции, но ассоциированные с определенным типом."),
			
			Question(question: ["Для чего необходимо использовать неявное свойство self?",
								"Неявное свойство self вы должны использовать для этого"],
					 image: "",
					 optionA: "Для ссылки на текущий экземпляр",
					 optionB: "Для ссылки на другой экземпляр",
					 optionC: "",
					 optionD: "",
					 id: 325191802,
					 helpText: "Для ссылки на текущий экземпляр. Каждый экземпляр типа имеет неявное свойство self, которое является абсолютным эквивалентом самому экземпляру. Вы используете свойство self для ссылки на текущий экземпляр, внутри методов этого экземпляра."),
			
			Question(question: ["Если мы находимся не внутри функции или метода, обязаны ли мы употреблять self постоянно?",
								"Swift, без употребления ключевого self не поймет, что вы ссылаетесь на свойство или метод внутри текущего экземпляра, так ли это?"],
					 image: "",
					 optionA: "Нет",
					 optionB: "Да",
					 optionC: "",
					 optionD: "",
					 id: 801191006,
                     helpText: """
                     Нет. На практике вам не нужно писать self очень часто. Если вы не пишите self, то Swift полагает, что вы ссылаетесь на свойство или метод текущего экземпляра каждый раз, когда вы используете известное имя свойства или метода внутри метода.
                     
                     Главное исключение из этого правила получается, когда имя параметра метода экземпляра совпадает с именем свойства экземпляра. В этой ситуации имя параметра имеет приоритет и появляется необходимость сослаться на свойство в более подходящей форме.
                     
                     Вы используете свойство self для того, чтобы увидеть различие между именем параметра и именем свойства.
                     """),
			
			Question(question: ["Если имя параметра метода экземпляра совпадает с именем свойства экземпляра, должны ли мы писать self при обращении к свойству?",
								"Должны ли мы писать self, когда обращаемся к свойству экземпляра, при этом у нас совпадают имя параметра метода экземпляра с именем этого свойства?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 246314518,
					 helpText: "Да. Когда имя параметра метода экземпляра совпадает с именем свойства экземпляра, появляется необходимость сослаться на свойство в более подходящей форме. Вы используете свойство self для того, чтобы увидеть различие между именем параметра и именем свойства."),
			
			Question(question: ["Каким типом являются структуры и перечисления?",
								"Структуры и перечисления являются этим типом"],
					 image: "",
					 optionA: "Тип значения (value types)",
					 optionB: "Ссылочный тип (reference type)",
					 optionC: "",
					 optionD: "",
					 id: 407456897,
					 helpText: "Тип значения (value types). Структуры и перечисления являются типами значений."),
			
			Question(question: ["После указания этого ключевого слова к методу структуры или перечисления, он может изменить свои свойства изнутри метода",
								"Как нам сделать метод экземпляра структуры или перечисления изменяющимся (какое ключевое слово необходимо добавить)?",
								"Какое ключевое слово поможет методу экземпляра структуры стать изменяющимся, чтобы после завершения своего выполнения он мог изменять свойства этого экземпляра?"],
					 image: "",
					 optionA: "mutating",
					 optionB: "static",
					 optionC: "public",
					 optionD: "private",
					 id: 892493653,
                     helpText: """
                     mutating. Если вам нужно изменить свойства вашей структуры или перечисления изнутри конкретного метода, то вы можете выбрать поведение как изменяющееся для этого метода.
                     
                     После этого метод может изменить свои свойства изнутри метода, и все изменения будут сохранены в исходную структуру, когда выполнение метода закончится.
                     
                     Метод так же может присвоить совершенно новый экземпляр для свойства self, и этот новый экземпляр заменит существующий, после того как выполнение метода закончится.
                     """),
			
			Question(question: ["Если наш экземпляр структуры является константой, можем ли мы вызывать изменяющиеся методы?",
								"Можете ли вы вызывать изменяющийся метод для константных типов структуры?"],
					 image: "",
					 optionA: "Нет",
					 optionB: "Да",
					 optionC: "Если свойства - переменные",
					 optionD: "",
					 id: 282037802,
					 helpText: "Нет. Вы не можете вызвать изменяющийся (mutating) метод для константных типов структуры, потому как ее свойства не могут быть изменены, даже если свойства являются переменными"),
			
			Question(question: ["Могут ли изменяющие (mutating) методы присваивать полностью новый экземпляр неявному свойству self?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 146811213,
					 helpText: "Да. Изменяющие (mutating) методы могут присваивать полностью новый экземпляр неявному свойству self."),
			
			Question(question: ["Могут ли изменяющиеся методы перечислений устанавливать отдельный член перечисления как неявный параметр self?",
								"Можем ли мы через изменяющиеся методы перечисления установить отдельный член этого перечисления как неявный параметр self?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 278022135,
					 helpText: "Да. Изменяющиеся методы для перечислений могут установить отдельный член перечисления как неявный параметр self."),
			
			Question(question: ["Каким ключевым словом определить методы типа?",
								"Методы типа можно определить через это ключевое слово",
								"Вы можете определить методы, которые вызываются самим типом (методы типа), какое ключевое слово необходимо использовать?"],
					 image: "",
					 optionA: "static",
					 optionB: "class",
					 optionC: "public",
					 optionD: "fileprivate",
					 id: 807118130,
                     helpText: """
                     static. Вы можете определить методы, которые вызываются самим типом. Такие методы зовутся методами типа. Индикатор такого метода - ключевое слово static, которое ставится до ключевого слова метода func.
                     
                     Классы так же могут использовать ключевое слово class, чтобы разрешать подклассам переопределение инструкций суперкласса этого метода.
                     """),
			
			Question(question: ["Можем ли мы создавать методы типа для классов, структур и перечислений?",
								"В Swift мы можем создавать методы типа для классов, структур, и перечислений, так ли это?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 579204330,
					 helpText: "Да. В Objective-C определять методы типов можно только для классов. В Swift вы можете создавать методы типа не только для классов, но и для структур и перечислений. Метод каждого типа ограничен самим типом, который он поддерживает."),
			
			Question(question: ["Можем ли мы использовать точечный синтаксис для обращения к методам типа?",
								"Мы можем использовать точечный синтаксис для обращения к методам типа, так ли это?"],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 130939802,
					 helpText: "Да. Методы типа так же используют точечный синтаксис, как и методы экземпляра. Однако эти методы вы вызываете самим типом, а не экземпляром этого типа."),
			
			Question(question: ["Сколько методов у класса Counter?"],
					 image: "Methods22",
					 optionA: "Два",
					 optionB: "Три",
					 optionC: "Один",
					 optionD: "У Counter нет методов",
					 id: 302059157,
					 helpText: "Два. increment() и increment(by amount: Int). Все функции, относящиеся к определенному классу, являются методами."),
			
			Question(question: ["Получим ли мы сообщение в консоль?",
								"Выводится ли сообщение в консоль?"],
					 image: "Methods23",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 271399982,
					 helpText: "Да. Мы присваиваем свойству x значение 4.0, и когда вызываем метод нашего экземпляра - проверяем является ли 4.0 больше чем 1.0, и когда получаем true (а в строчке if somePoint.isToTheRightOf(x: 1.0) мы проверяем именно это) - выводим наше сообщение в консоль."),
			
			Question(question: ["Что мы получим, если в return self.x > x уберем self?",
								"Если мы уберем self у return self.x > x, что получится?"],
					 image: "Methods23",
					 optionA: "print не сработает",
					 optionB: "print сработает",
					 optionC: "Ошибка компиляции",
					 optionD: "",
					 id: 295876701,
					 helpText: "print не сработает. Если мы уберем self, то метод будет считать, что мы производим сравнение входного параметра х с этим же входящим параметром х, а эта операция сравнения не может вернуть true. А раз результатом работы нашего метода будет false - print не отработает."),
			
			Question(question: ["Можем ли мы подобным образом присваивать значения self?"],
					 image: "Methods25",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 702290128,
                     helpText: """
                     Да. Изменяющиеся методы для перечислений могут установить отдельный член перечисления как неявный параметр self.
                     
                     В этом примере мы рассматриваем перечисление с тремя положениями переключателя. Переключатель проходит последовательно три положения (off, low, high), каждый раз меняя положение, как вызывается метод next().
                     """)
		]
	}
}
