
//  Created by Евгений Никитин on 12.05.2020.
//  Copyright © 2020 Evel-Devel. All rights reserved.

import Foundation

final class InheritanceSet {
	static func getQuestions() -> [Question] {
		return [
			Question(question: [
                "Могут ли структуры иметь наследование?",
                "У структур есть наследование?",
                "Есть ли наследование у структур и перечислений?"
            ],
					 image: "",
					 optionA: "Нет",
					 optionB: "Да",
					 optionC: "",
					 optionD: "",
					 id: 713075818,
					 helpText: "Нет. Наследование - фундаментальное поведение, которое отделяет классы от других типов Swift."),
			
			Question(question: [
                "Как называется наследующий класс?",
                "Наследующий класс называется так"
            ],
					 image: "",
					 optionA: "Подкласс",
					 optionB: "Суперкласс",
					 optionC: "Класс",
					 optionD: "Наследник",
					 id: 193474063,
					 helpText: "Подкласс. Класс может наследовать методы, свойства и другие характеристики другого класса. Когда один класс наследует у другого класса, то наследующий класс называется подклассом, класс у которого наследуют - суперклассом."),
			
			Question(question: [
                "Как называется класс, у которого наследуют?",
                "Класс у которого наследуют, называется так"
            ],
					 image: "",
					 optionA: "Суперкласс",
					 optionB: "Подкласс",
					 optionC: "Класс",
					 optionD: "Наследник",
					 id: 613083040,
					 helpText: "Суперкласс. Когда один класс наследует у другого класса, то наследующий класс называется подклассом, класс у которого наследуют - суперклассом. "),
			
			Question(question: [
                "Может ли подкласс вызывать или получать доступ к методам, свойствам, индексам, принадлежащим своему суперклассу?",
                "Могут ли классы в Swift вызывать или получать доступ к методам, свойствам, индексам, принадлежащим их суперклассам?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "Только получать доступ",
					 optionD: "Только вызывать",
					 id: 384597822,
					 helpText: "Да. Классы в Swift могут вызывать или получать доступ к методам, свойствам, индексам, принадлежащим их суперклассам."),
			
			Question(question: [
                "Могут ли классы предоставлять свои собственные переписанные версии методов, свойств, индексов своего суперкласса для усовершенствования?",
                "Могут ли классы предоставлять свои собственные переписанные версии свойств и методов суперкласса, для изменения их поведения?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 879234496,
					 helpText: "Да. Классы в Swift могут предоставлять свои собственные переписанные версии методов, свойств, индексов своего суперкласса для усовершенствования или изменения их поведения."),
			
			Question(question: [
                "Может ли класс добавлять наблюдателей свойств к унаследованным свойствам?",
                "Можете ли вы добавить наблюдателей свойств к унаследованным свойствам?",
                "Мы можем добавить наблюдателей свойств к унаследованным свойствам, так ли это?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "Только к хранимым",
					 optionD: "Только к вычисляемым",
					 id: 990023240,
                     helpText: """
                     Да. Классы так же могут добавлять наблюдателей свойств к унаследованным свойствам для того, чтобы быть в курсе, когда происходит смена значения свойства.
                     
                     Наблюдатели свойств могут быть добавлены для любого свойства, несмотря на то были ли они изначально определены как хранимые свойства или вычисляемые.
                     """),
			
			Question(question: [
                "Как называется любой класс, который ничего не наследует из другого класса?",
                "Класс, который ничего не наследует из другого класса",
                "Этот класс ничего не наследует из других классов"
            ],
					 image: "",
					 optionA: "Базовый класс",
					 optionB: "Пустой класс",
					 optionC: "Суперкласс",
					 optionD: "",
					 id: 653277659,
                     helpText: """
                     Базовый класс. Любой класс, который ничего не наследует из другого класса, называется базовым классом. Классы в Swift ничего не наследуют от универсального базового класса.
                     
                     Классы, у которых не указан супер класс (родительский класс), называются базовыми, которые вы можете использовать для строительства других классов.
                     """),
			
			Question(question: [
                "Как называется создание нового класса на базе существующего (базового) класса?",
                "Создание нового класса на базе существующего называется именно так"
            ],
					 image: "",
					 optionA: "Наследование",
					 optionB: "Подчинение",
					 optionC: "Деклассирование",
					 optionD: "",
					 id: 953971754,
					 helpText: "Наследование. Оно является актом создания нового класса на базе существующего класса (базового класса). Подкласс наследует характеристики от существующего класса, который затем может быть усовершенствован. Вы так же можете добавить новые характеристики подклассу."),
			
			Question(question: [
                "Чем разделяется имя подкласса и имя суперкласса при наследовании?",
                "При наследовании имя суперкласса и подкласса разделяются этим знаком"
            ],
					 image: "",
					 optionA: "Двоеточие (:)",
					 optionB: "Точка с запятой (;)",
					 optionC: "Троеточие (...)",
					 optionD: "Тире (-)",
					 id: 805770539,
					 helpText: "Двоеточие (:). Для индикации того, что подкласс имеет суперкласс, просто напишите имя подкласса, затем имя суперкласса и разделите их двоеточием."),
			
			Question(question: [
                "Могут ли подклассы создавать подклассы?",
                "Подклассы могут создавать другие подклассы?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 698340352,
					 helpText: "Да. Подклассы сами могут создавать подклассы."),
			
			Question(question: [
                "Процесс, при котором подклассы могут проводить свои собственные реализации методов экземпляра, методов класса, свойств экземпляра, свойств класса или индекса",
                "Как называется процесс, при котором подклассы могут проводить свои собственные реализации методов суперкласса?"
            ],
					 image: "",
					 optionA: "Переопределение",
					 optionB: "Перепись",
					 optionC: "Перезапись",
					 optionD: "Перенастройка",
					 id: 166114422,
					 helpText: "Переопределение. Подклассы могут проводить свои собственные реализации методов экземпляра, методов класса, свойств экземпляра, свойств класса или индекса, который в противном случае будет наследовать от суперкласса. Это известно как переопределение."),
			
			Question(question: [
                "Какое ключевое слово используется для переопределения?",
                "Это ключевое слово говорит, что вы планируете переопределить методы или свойства суперкласса",
                "Чтобы переопределять методы и свойства суперкласса, используется это ключевое слово"
            ],
					 image: "",
					 optionA: "override",
					 optionB: "overwrite",
					 optionC: "overdrive",
					 optionD: "offroad",
					 id: 884324823,
                     helpText: """
                     override. Для переопределения характеристик, которые все равно будут унаследованы, вы приписываете к переписываемому определению ключевое слово override.
                     
                     Переписывание по случайности может вызвать непредвиденное поведение, и любое переопределение без ключевого слова override, будет считаться ошибкой при компиляции кода.
                     
                     Ключевое слово override так же подсказывает компилятору Swift проверить, что вы переопределяете суперкласс класса (или один из его параметров), который содержит то определение, которое вы хотите переопределить. Эта проверка гарантирует, что ваше переопределение корректно.
                     """),
			
			Question(question: [
                "С помощью какого ключевого слова мы можем получить доступ и использовать существующую реализацию метода суперкласса, при переопределении внутри подкласса?",
                "Когда вы проводите переопределение метода или свойства для подкласса, бывает полезно использовать существующую реализацию суперкласса. Какое ключевое слово необходимо использовать?"
            ],
					 image: "",
					 optionA: "super",
					 optionB: "superior",
					 optionC: "superclass",
					 optionD: "sup",
					 id: 867521246,
                     helpText: """
                     super. Когда вы проводите переопределение метода, свойства, индекса, иногда бывает полезно использовать существующую реализацию суперкласса как часть вашего переопределения. Вы можете усовершенствовать поведение существующей реализации или сохранить измененное значение в существующей унаследованной переменной.
                     
                     Переопределенный метод someMethod может вызвать версию суперкласса метода super.someMethod() внутри переопределения реализации метода. Переопределённое свойство someProperty может получить доступ к свойству версии суперкласса super.someProperty внутри переопределения реализации геттера или сеттера.
                     
                     Переопределенный индекс для someIndex может получить доступ к super[someIndex] изнутри переопределения реализации индекса.
                     """),
			
			Question(question: [
                "Можете ли вы переопределить унаследованный метод экземпляра или класса?",
                "Если мы хотим обеспечить индивидуальную или альтернативную версию реализации метода в подклассе, можем ли мы его переопределить?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 531938730,
					 helpText: "Да. Вы можете переопределить унаследованный метод экземпляра или класса, чтобы обеспечить индивидуальную или альтернативную версию реализации метода в подклассе."),
			
			Question(question: [
                "Можете ли вы переопределять унаследованные свойства класса или экземпляра, для установки вашего собственного геттера и сеттера для этого свойства?",
                "Можете ли вы добавить наблюдателя свойства для наблюдения за переопределяемым свойством, когда меняется лежащее в основе значение?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 198025704,
					 helpText: "Да. Вы можете переопределить унаследованные свойства класса или экземпляра для установки вашего собственного геттера и сеттера для этого свойства, или добавить наблюдателя свойства для наблюдения за переопределяемым свойством, когда меняется лежащее в основе значение свойства."),
			
			Question(question: [
                "При переопределении унаследованных свойств, есть ли разница, как оно было определено в самом источнике, как свойство хранения или вычисляемое свойство?",
                "При переопределении свойств, для нас важно, как оно было определено в самом источнике, как свойство хранения или как вычисляемое свойство. Так ли это?"
            ],
					 image: "",
					 optionA: "Нет",
					 optionB: "Да",
					 optionC: "",
					 optionD: "",
					 id: 874704592,
                     helpText: """
                     Нет. Вы можете предусмотреть пользовательский геттер (и сеттер, если есть в этом необходимость) для переопределения любого унаследованного свойства, несмотря на то как свойство было определено в самом источнике, как свойство хранения или как вычисляемое.
                     
                     Подкласс не знает каким является унаследованное свойство хранимым или вычисляемым, все что он знает, так это имя свойства и его тип.
                     """),
			
			Question(question: [
                "Можем ли мы свойство суперкласса \"только для чтения\" переопределить как свойство, которое можно читать и редактировать?",
                "Мы не можем сделать редактируемое и читаемое свойство суперкласса свойством \"только для чтения\" при переопределении. Так ли это?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 963929078,
                     helpText: """
                     Да. Вы можете представить унаследованное свойство только для чтения, как свойство, которое можно читать и редактировать, прописывая и геттер и сеттер в вашем переопределяемом свойстве подкласса.
                     
                     Однако вы не можете сделать наоборот, то есть сделать свойство редактируемое и читаемое только свойством для чтения.
                     """),
			
			Question(question: [
                "Должны ли мы констатировать имя и тип свойства, которое мы переопределяем?",
                "Мы должны констатировать имя и тип свойств, которые мы переопределяем. Так ли это?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 438635774,
					 helpText: "Да. Вы всегда должны констатировать и имя и тип свойства, которое вы переопределяете, для того чтобы компилятор мог проверить соответствие и наличие переопределяемого свойства у суперкласса."),
			
			Question(question: [
                "Если вы предоставляете сеттер как часть переопределения свойства, должны ли вы предоставить и геттер?",
                "При предоставлении сеттера, как части переопределения свойства, должны ли мы предоставлять и геттер?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 685137820,
					 helpText: "Да. Если вы предоставляете сеттер как часть переопределения свойства, то вы должны предоставить и геттер для этого переопределения."),
			
			Question(question: [
                "Можем ли мы добавлять наблюдателей свойства на унаследованное константное свойство или унаследованные вычисляемые свойства только для чтения?"
            ],
					 image: "",
					 optionA: "Нет",
					 optionB: "Да",
					 optionC: "",
					 optionD: "",
					 id: 599457535,
					 helpText: "Нет. Вы не можете добавить наблюдателей свойства на унаследованное константное свойство или на унаследованные вычисляемые свойства только для чтения. Значение этих свойств не может меняться, так что нет никакого смысла вписывать willSet, didSet как часть их реализации."),
			
			Question(question: [
                "Каким ключевым словом можно предотвратить переопределение метода, свойства или индекса?",
                "Какое ключевое слово обозначает метод, свойство или индекс как \"конечное\", и запрещает его переопределение?"
            ],
					 image: "",
					 optionA: "final",
					 optionB: "end",
					 optionC: "private",
					 optionD: "static",
					 id: 885082941,
					 helpText: "final. Вы можете предотвратить переопределение метода, свойства или индекса, обозначив его как конечный. Сделать это можно написав ключевое слово final перед ключевым словом метода, свойства или индекса (final var, final func, final class func, и final subscript)."),
			
			Question(question: [
                "К чему приведет попытка переписать конечный метод, свойство или индекс?",
                "Попытка переписать конечный метод, свойство или индекс, приведет к этому"
            ],
					 image: "",
					 optionA: "Ошибка компиляции",
					 optionB: "Ни к чему",
					 optionC: "К переопределению",
					 optionD: "К изменению значения",
					 id: 981313693,
					 helpText: "Ошибка компиляции. Любая попытка переписать конечный метод, свойство или индекс в подклассе приведет к ошибке компиляции."),
			
			Question(question: [
                "Можем ли мы отметить метод внутри расширения как конечный?",
                "Можете ли вы отметить свойства внутри расширения как конечные?",
                "Можем ли мы отметить индексы внутри расширения как конечные?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 492364632,
					 helpText: "Да. Методы, свойства и индексы, которые вы добавляете в класс в расширении, так же могут быть отмечены как конечные внутри определения расширения."),
			
			Question(question: [
                "Можем ли мы отметить целый класс как конечный или финальный?"
            ],
					 image: "",
					 optionA: "Да",
					 optionB: "Нет",
					 optionC: "",
					 optionD: "",
					 id: 582913481,
					 helpText: "Да. Вы можете отметить целый класс как конечный или финальный, написав слово final перед ключевым словом class (final class). Любая попытка изменить класс так же приведет к ошибке компиляции."),
            
            Question(question: [
                "Поддерживает ли Swift множественное наследование?"
            ],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "Иногда",
                     optionD: "",
                     id: 783909859,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/",
                        "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance/"
                     ],
                     helpText: """
                     Нет. Swift не позволяет множественное наследование классов, то есть класс не может наследовать сразу от нескольких других классов.
                     
                     Это было сделано в целях уменьшения сложности кода, устранения путаницы и разрешения конфликтов, которые могут возникнуть при множественном наследовании.

                     Вместо множественного наследования Swift предоставляет протоколы, которые могут быть реализованы классами, структурами или перечислениями. Класс может наследовать только один базовый класс, но при этом он может реализовать несколько протоколов.
                     
                     Протоколы позволяют создавать гибкую иерархию функциональности, не ограничивая себя ограничениями множественного наследования.
                     """
                    ),
            
            Question(question: [
                "Может ли протокол наследовать множество других протоколов?"
            ],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 151562472,
                     links: [
                        "https://swiftbook.ru/content/languageguide/protocols/",
                        "https://habr.com/ru/articles/593797/"
                     ],
                     helpText: """
                     Да. Протокол может наследовать один или более других протоколов и может добавлять требования поверх тех требований протоколов, которые он наследует.
                     
                     Синтаксис наследования протокола аналогичен синтаксису наследования класса, но с возможностью наследовать сразу несколько протоколов, которые разделяются между собой запятыми.
                     """),
            
            Question(question: [
                "Может ли структура в Swift наследоваться от другой структуры?"
            ],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 253847666,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/"
                     ],
                     helpText: """
                     Нет. Структуры в Swift не могут наследоваться.
                     
                     Это означает, что структура не может быть подклассом другой структуры, класса или протокола.
                     """),
            
            Question(question: [
                "Может ли структура в Swift наследоваться от класса?"
            ],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 122211365,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/"
                     ],
                     helpText: """
                     Нет. Структуры в Swift не могут наследоваться.
                     
                     Это означает, что структура не может быть подклассом другой структуры, класса или протокола.
                     """),
            
            Question(question: [
                "Может ли структура в Swift наследоваться от протокола?"
            ],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 689513141,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/"
                     ],
                     helpText: """
                     Нет. Структуры в Swift не могут наследоваться.
                     
                     Это означает, что структура не может быть подклассом другой структуры, класса или протокола.
                     """),
            
            Question(question: [
                "Может ли класс в Swift наследоваться от другого класса?"
            ],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 163166069,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/"
                     ],
                     helpText: """
                     Да. Классы в Swift могут наследоваться от других классов.
                     
                     Это позволяет создавать иерархии классов, где подклассы наследуют свойства и методы родительских классов.
                     
                     Однако, множественное наследование классов в Swift не поддерживается, что означает, что класс может иметь только один родительский класс.
                     """),
            
            Question(question: [
                "Может ли класс в Swift наследоваться от нескольких классов?"
            ],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 577703709,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/"
                     ],
                     helpText: """
                     Нет. Множественное наследование классов в Swift не поддерживается, что означает, что класс может иметь только один родительский класс.
                     """),
            
            Question(question: [
                "Может ли класс в Swift наследоваться от нескольких протоколов?"
            ],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 790270267,
                     links: [
                        "https://swiftbook.ru/content/languageguide/inheritance/"
                     ],
                     helpText: """
                     Да. Класс поддерживает множественное наследование от протоколов.
                     
                     Это означает, что класс может подписываться на несколько протоколов одновременно, что дает ему возможность использовать функциональность всех этих протоколов.
                     """),
		]
	}
}
