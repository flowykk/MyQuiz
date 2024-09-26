//
//  SetsSet.swift
//  Swifty-Quiz
//
//  Created by Евгений Никитин on 04.07.2021.
//  Copyright © 2021 Evel-Devel. All rights reserved.
//

import Foundation

final class SetsSet {
    static func getQuestions() -> [Question] {
        return [
            Question(question: ["Каким должен быть тип значения, чтобы он мог храниться в множестве?",
                                "Тип значений должен быть именно таким, чтобы иметь возможность храниться в множестве",
                                "Каким будет тип значения, если он хранится в множестве?"],
                     image: "",
                     optionA: "Хешируемым",
                     optionB: "Булевым",
                     optionC: "Числовым",
                     optionD: "Вычисляемым",
                     id: 907775541,
                     helpText: """
                     Хешируемым. Тип значений должен быть хешируемым для того, чтобы мог храниться в множестве, таким образом тип должен предоставлять возможность для вычисления собственного значения хеша.
                     
                     Тип значения хеша Int должен быть для всех объектов одинаковым, чтобы можно было провести сравнение что если a == b, то и a.hashValue == b.hashValue.
                     
                     Вы можете использовать ваш собственный тип в качестве типа значения множества или типа ключа словаря, подписав его под протокол Hashable из стандартной библиотеки Swift.
                     """),
            
            Question(question: ["После запуска данного кода мы получим множество, состоящее из двух элементов. Так ли это?"],
                     image: "Collections07",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 952768108,
                     helpText: "Нет. У множества нет инициализатора, при которой мы можем передать просто несколько чисел в круглые скобки, мы должны поместить их в массив Set([1, 1, 2, 2]) - таким образом мы бы получили множество из двух элементов (1 и 2)."),
            
            Question(question: ["Как в Swift записывается тип множества?",
                                "Так записывают тип множества в Swift",
                                "Как мы должны записывать тип множества в Swift?"],
                     image: "",
                     optionA: "Set<ElementType>",
                     optionB: "Set(ElementType)",
                     optionC: "Set[ElementType]",
                     optionD: "(Set<ElementType>)",
                     id: 290909764,
                     helpText: "Set<ElementType>. Тип множества Swift записывается как Set<ElementType>, ElementType является типом, который хранится в множестве."),
            
            Question(question: ["Имеют ли множества сокращенную форму записи, если да, то какую?",
                                "Есть ли у множеств сокращенная форма записи? Если да, то какая? ",
                                "Можем ли мы записать множество в сокращенной форме, если да, то как?"],
                     image: "",
                     optionA: "Нет",
                     optionB: "Да, (Set)",
                     optionC: "Да, <Set>",
                     optionD: "",
                     id: 881765205,
                     helpText: "Нет. В отличии от массивов множества не имеют сокращенной формы записи. Кроме случаев инициализации через литерал массива, где содержатся элементы одного и того-же типа, в таком случае можно писать просто Set, без указания конкретного типа."),
            
            Question(question: ["Как создать пустое множество конкретного типа?",
                                "Как вы можете создать пустое множество конкретного типа, используя синтаксис инициализатора?",
                                "Через синтаксис инициализатора мы можем создать пустое множество конкретного типа, как?"],
                     image: "",
                     optionA: "= Set<String>()",
                     optionB: "= Array<String>[]",
                     optionC: "= Dictionary<String>()",
                     optionD: "",
                     id: 832054696,
                     helpText: "= Set<String>(). Вы можете создать пустое множество конкретного типа, используя синтаксис инициализатора: var name = Set<String>(). Тип переменной name будет выведен из типа инициализатора как Set<String>."),
            
            Question(question: ["Если контекст дает информацию о типе, можем ли мы создать пустое множество при помощи литерала пустого массива?",
                                "Если у нас есть явное указание типа, можем ли мы обнулить множество, используя литера массива (пустые квадратные скобки)?",
                                "Можем ли мы создать пустое множество, используя литерал пустого массива (пустые квадратные скобки), если у нас есть явно указанный тип этого множества?"],
                     image: "",
                     optionA: "Да",
                     optionB: "Нет",
                     optionC: "",
                     optionD: "",
                     id: 221589247,
                     helpText: "Да. Альтернативно, если контекст предоставляет информацию о типе, например как аргумент функции или просто явное указание типа переменной или константы, то вы можете создать пустое множество при помощи пустого литерала массива."),
            
            Question(question: ["После запуска мы получим множество с двумя числами. Так ли это?"],
                     image: "Collections08",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 217650665,
                     helpText: "Нет. Мы инициализируем множество, в котором одно число 100000, здесь используется нижнее подчеркивание, которое может сбивать с толку, но на самом деле оно используется только для красоты, чтобы визуально отделять части чисел друг от друга."),
            
            Question(question: ["Можем ли мы инициализировать множество при помощи литерала массива?",
                                "Можем ли мы с помощью литерала массива инициализировать множество?"],
                     image: "",
                     optionA: "Да, let ints: Set<Int> = [1, 2]",
                     optionB: "Нет, не можем",
                     optionC: "Да, let ints: Set<Int>([1, 2])",
                     optionD: "Да, let ints = Set<Int[1, 2]>",
                     id: 515009887,
                     helpText: """
                     Да, let ints: Set<Int> = [1, 2]. Вы можете инициализировать множество при помощи литерала массива, чтобы использовать его в качестве сокращенной записи нескольких элементов множества.
                     
                     Для этого вы должны явно указать что это множество определенных типов значений (записывается как Set<Type>).
                     
                     Где Type - это любые стандартные типы Int, String, Double или Bool (или любой другой хешируемый тип значений).
                     """),
            
            Question(question: ["Какой тип будет присвоен этому множеству?",
                                "Как будет выглядеть полная запись типа этого множества?",
                                "Выберите тип этого множества"],
                     image: "Collections45",
                     optionA: "Set<String>",
                     optionB: "Character",
                     optionC: "String",
                     optionD: "Set<Character>",
                     id: 476099723,
                     helpText: "Set<String>. Любому знаку присваивается тип String, если не указать иного (Character). А так как это множество, то правильный ответ будет Set<String>."),
            
            Question(question: ["Если попытаться удалить элемент множества, которого в нем нет, что мы получим?",
                                "При удалении несуществующего элемента множества через remove(_:), что мы получим?",
                                "Если мы попытаемся удалить элемент из множества, но его там не окажется, что мы получим?"],
                     image: "",
                     optionA: "nil",
                     optionB: "Последний элемент множества",
                     optionC: "Первый элемент множества",
                     optionD: "",
                     id: 969130028,
                     helpText: "nil. Вы можете удалить элемент из множества, используя метод remove(_:), который удаляет элемент, который является членом множества и возвращает удаленное значение или nil, если удаляемого элемента нет."),
            
            Question(question: ["У множества нет порядка, поэтому, чтобы удобнее его итерировать, используется этот метод с циклом for-in",
                                "Какой метод используется для порядкового итерирования множества через цикл for-in?",
                                "Итерация множества по порядку через цикл for-in будет удобнее после применения этого метода"],
                     image: "",
                     optionA: ".sorted()",
                     optionB: ".sort()",
                     optionC: ".filter()",
                     optionD: ".flatMap()",
                     id: 895419884,
                     helpText: "sorted(). Множества в Swift не имеют определенного порядка. Для того, чтобы провести итерацию по множеству в определенном порядке, вам нужно использовать метод sorted(), который возвращает вам элементы коллекции в виде отсортированного массива, используя операторы < или >."),
            
            Question(question: ["Какой метод создает новое множества из всех значений двух множеств?"],
                     image: "Collections48",
                     optionA: "union(_:)",
                     optionB: "intersection(_:)",
                     optionC: "subtracting(_:)",
                     optionD: "symmetricDifference(_:)",
                     id: 508766738,
                     helpText: """
                     union(_:). Используйте метод union(_:) для создания нового множества, состоящего из всех значений двух входных множеств.
                     
                     Если в множествах значения повторяются - они не будут повторяться в новом множестве (все значения внутри множества уникальны).
                     
                     Допустим, есть одно множество one = [0, 1, 2, 3, 4, 5], и есть второе множество two = [3, 4, 5, 6], при выполнении one.union(two).sorted() мы получим [0, 1, 2, 3, 4, 5, 6].
                     """),
            
            Question(question: ["В каком варианте указана валидная инициализация коллекции?"],
                     image: "Collections13",
                     optionA: "Вариант №2",
                     optionB: "Вариант №1",
                     optionC: "Ни в каком варианте",
                     optionD: "",
                     id: 607365857,
                     helpText: """
                     Вариант №2. В данном случае правильной является инициализация коллекции во втором варианте, потому что в первом мы указываем тип множества в неправильных скобках, вместо квадратных там должны быть угловые.
                     
                     Корректным вариантом была бы версия var friends = Set<String>().
                     """),
            
            Question(question: ["Как создать новое множество только из общих значений двух множеств?"],
                     image: "Collections49",
                     optionA: "intersection(_:)",
                     optionB: "union(_:)",
                     optionC: "subtracting(_:)",
                     optionD: "symmetricDifference(_:)",
                     id: 567638868,
                     helpText: """
                     intersection(_:). Используйте метод intersection(_:) для создания нового множества из общих значений двух входных множеств.
                     
                     Допустим, есть одно множество one = [0, 1, 2, 3, 4, 5], и есть второе множество two = [3, 4, 5, 6], при выполнении one.intersection(two).sorted() мы получим [3, 4, 5]
                     """),
            
            Question(question: ["Как из значений, не принадлежащих указанному множеству, создать новое множество?",
                                "Создать множество из значений, не принадлежащих указанному множеству, можно так",
                                "Как создать новое множество из значений, не принадлежащих указанному множеству?"],
                     image: "Collections50",
                     optionA: "subtracting(_:)",
                     optionB: "intersection(_:)",
                     optionC: "union(_:)",
                     optionD: "symmetricDifference(_:)",
                     id: 171704573,
                     helpText: """
                     subtracting(_:). Используйте метод subtracting(_:) для создания множества со значениями не принадлежащих указанному множеству из двух входных.
                     
                     Допустим, есть одно множество one = [0, 1, 2, 3, 4, 5], и есть второе множество two = [3, 4, 5, 6], при выполнении one.subtracting(two).sorted() мы получим [0, 1, 2].
                     """),
            
            Question(question: ["Метод создания множества из неповторяющихся значений двух входных множеств?"],
                     image: "Collections51",
                     optionA: "symmetricDifference(_:)",
                     optionB: "intersection(_:)",
                     optionC: "subtracting(_:)",
                     optionD: "union(_:)",
                     id: 141936872,
                     helpText: """
                     symmetricDifference(_:). Используйте метод symmetricDifference(_:) для создания нового множества из значений, которые не повторяются в двух входных множествах.
                     
                     Допустим, есть одно множество one = [0, 1, 2, 3, 4, 5], и есть второе множество two = [3, 4, 5, 6], при выполнении one.symmetricDifference(two).sorted() мы получим [0, 1, 2, 6].
                     """),
            
            Question(question: ["Какое из этих множеств является надмножеством другого множества?",
                                "Выберите множество, которое является надмножеством"],
                     image: "Collections52",
                     optionA: "a",
                     optionB: "b",
                     optionC: "c",
                     optionD: "На картинке нет надмножеств",
                     id: 953581992,
                     helpText: "a. Иллюстрация отображает три множества a, b и c. Множество a является надмножеством множества b, так как содержит все его элементы."),
            
            Question(question: ["Какое из этих множеств является подмножеством другого множества?",
                                "Выберите множество, которое является подмножеством"],
                     image: "Collections52",
                     optionA: "b",
                     optionB: "a",
                     optionC: "c",
                     optionD: "На картинке нет подмножеств",
                     id: 204559638,
                     helpText: "b. Иллюстрация отображает три множества a, b и c. Множество b является подмножеством множества a потому, что все его элементы находятся в a."),
            
            Question(question: ["Сколько элементов будет в множестве booleans?"],
                     image: "Collections05",
                     optionA: "2",
                     optionB: "3",
                     optionC: "1",
                     optionD: "",
                     id: 793276580,
                     helpText: "2. В множестве booleans останется два уникальных элемента, и при выполнении print мы получим в консоль [false, true] или [true, false], поскольку множество не является упорядоченным."),
            
            Question(question: ["Какие из этих множеств являются разделенными?",
                                "На картинке есть два разделенных множества, какие?",
                                "Выберите два множества, которые можно назвать разделенными"],
                     image: "Collections52",
                     optionA: "b и c",
                     optionB: "a и b",
                     optionC: "c и a",
                     optionD: "Здесь нет разделенных",
                     id: 828983224,
                     helpText: "b и c. Иллюстрация отображает три множества a, b и c. Множества b и c называются разделенными, так как у них нет общих элементов."),
            
            Question(question: ["Какой метод поможет определить, все ли значения множества содержатся в указанном множестве?",
                                "Этот метод поможет узнать, все ли значения множества содержатся в указанном множестве"],
                     image: "",
                     optionA: "isSubset(of:)",
                     optionB: "isSuperset(of:)",
                     optionC: "",
                     optionD: "",
                     id: 315801845,
                     helpText: """
                     isSubset(of:). Используйте метод isSubset(of:) для определения все ли значения множества содержатся в указанном множестве.
                     
                     Например, let one: Set = [1, 2], let two: Set = [1, 2, 3, 4, 5], one.isSubset(of: two) вернет true, потому что все значения множества one содержатся в множестве two.
                     
                     Фактически мы определяем, является ли множество подмножеством указанного множества.
                     """),
            
            Question(question: ["Какой метод поможет определить, содержит ли множество все значения указанного множества?",
                                "Этот метод поможет узнать, содержит ли множество все значения указанного множества"],
                     image: "",
                     optionA: "isSuperset(of:)",
                     optionB: "isSubset(of:)",
                     optionC: "isStrictSubset(of:)",
                     optionD: "",
                     id: 195360097,
                     helpText: """
                     isSuperset(of:). Используйте метод isSuperset(of:), чтобы определить содержит ли множество все значения указанного множества.
                     
                     Например, let one: Set = [1, 2], let two: Set = [1, 2, 3, 4, 5], two.isSuperset(of: one) вернет true, потому что все значения множества one содержатся в множестве two.
                     
                     Фактически мы определяем, является ли множество надмножеством указанного множества.
                     """),
            
            Question(question: ["Данным действием мы создадим множество (Set) с тремя элементами типа Int. Так ли это?"],
                     image: "Collections06",
                     optionA: "Нет",
                     optionB: "Да",
                     optionC: "",
                     optionD: "",
                     id: 492459186,
                     helpText: "Нет. Во время инициализации мы явным образом не указали, что хотим создать множество, указав Set([1, 2, 3]), поэтому в нашем варианте мы получим массив, состоящий из трех целых чисел."),
            
            Question(question: ["В каком варианте указана валидная инициализация коллекции?"],
                     image: "Collections11",
                     optionA: "Первый вариант",
                     optionB: "Второй вариант",
                     optionC: "Ни в одном варианте",
                     optionD: "",
                     id: 812499369,
                     helpText: "Первый вариант. Корректная инициализация коллекции происходит в первом варианте, во втором - мы не указали тип множества. Второй вариант был бы корректен, например, в таком случае: var badges = Set<Int>()."),
        ]
    }
}
