//
//  main.swift
//  StringStack
//
//  Created by Александра Сергеева on 30.11.2022.
//

//Это класс который реализует структуру данных stack с типом данных стринг
//
//У класса есть функции
//pop(): String? - возвращает самый верхний элемент, если он есть
//put(element: String) - кладет на верх стека новый элемент
//
//Итоговое использование выглядит примерно так
//
//let stack = StringStack()
//stack.put("baby")
//stack.put("Sasha")
//print(stack.pop()) - выведет Sasha

import Foundation

class AnyStack<T>{
    
    private var array = [T]()
    
    func put(element: T) {
        array.append(element)
    }
    
    func pop() -> T? {
        let index = array.count - 1
        if !array.isEmpty {
            return array[index]
        } else {
            return nil
        }
    }
    
    func clearStack() {
        // пока в массиве есть что-то  - удялем последний элемент
        while !array.isEmpty {
            let lastElement = array.count - 1
            array.remove(at: lastElement)
        }
    }
}

let newStack = AnyStack<String>()
newStack.put(element: "baby")
newStack.put(element: "Sasha")
newStack.put(element: "Grogu")

newStack.clearStack()

print(newStack.pop() ?? "no value in stack")

let intStack = AnyStack<Int>()

intStack.put(element: 2)
intStack.put(element: 6)
intStack.put(element: 4)

print(intStack.pop() ?? "no value in stack")
