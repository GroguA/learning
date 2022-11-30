//
//  main.swift
//  MyQueue
//
//  Created by Александра Сергеева on 30.11.2022.
//

import Foundation

//реализовать класс MyQueue  - тип данных очередь
//функции popFirst(): T -  получить первый элемент в очереди и убрать его из нее
//функция addToBack(element: T)
//функция clear()

class MyQueue<T> {
    var array = [T]()
    let firstIndex = 0
    func popFirts() -> T? {
        if !array.isEmpty {
            return array.remove(at: firstIndex)
        } else {
            return nil
        }
    }
    func addToBack(element: T) {
        array.append(element)
    }
    func clear() {
        while !array.isEmpty {
            array.remove(at: firstIndex)
        }
    }
}

let queue = MyQueue<Int>()

queue.addToBack(element: 1)
queue.addToBack(element: 2)
queue.addToBack(element: 3)

//queue.clear()

print(queue.array)
print(queue.popFirts() ?? "no value in  queue")
print(queue.array)

