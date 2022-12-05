//
//  main.swift
//  LinkedInt List
//
//  Created by Александра Сергеева on 01.12.2022.
//

import Foundation

//Реализовать класс Node у которого будет 2 поля value: Int и nextNode: Node?
//
//Затем, реализовать класс LinkedIntList
//
//У него для начала будут функции
//addToBack()
//clear()
//
//Напоминаю, линкедЛист работает следующим образом
//
//В классе хранится ссылка лишь на первую Ноду, все остальные ноды сохраняются с помощью ссылке в предыдущей ноде
//
//например, у нас в линкедЛисте 3 ноды
//
//node1(указывает через nextNode на node2)
//node2(указывает через nextNode на node3)
//node3(никуда не указывает тк nextNode==nil)
//
//изначально при создании класса ЛинкедЛист его переменная firstNode == nil
//функция getByIndex принимает в себя индекс, а возвращает value опциональный
//нельзя использовать массив и квадратные скобки

class Node {
    var value: Int
    var nextNode: Node?
    init(value: Int, nextNode: Node? = nil) {
        self.value = value
        self.nextNode = nextNode
    }
}

class LinkedIntList {
    var firstNode: Node?
    private var internalCount = 0
    
    func addToBack(value: Int) {
        if firstNode == nil {
            firstNode = Node(value: value)
        } else {
            var currentNode = firstNode
            while currentNode?.nextNode != nil {
                currentNode = currentNode?.nextNode
            }
            currentNode?.nextNode = Node(value: value)
        }
        internalCount += 1
    }
    
    func getAll() -> Array<Int> {
        var array = [Int]()
        var currentNode = firstNode
        while currentNode != nil {
            if let convertedNode = currentNode {
                array.append(convertedNode.value)
                currentNode = currentNode?.nextNode
            }
        }
        return array
    }
    
    func clear() {
        firstNode = nil
        internalCount = 0
    }
    
    func addToStart(value: Int) {
        let newFirstNode = Node(value: value)
        let temp = firstNode
        firstNode = newFirstNode
        newFirstNode.nextNode = temp
        internalCount += 1
    }
    
    func getByIndex(index: Int) -> Int? {
        var count = 0
        var currentNode = firstNode
        while count != index {
            currentNode = currentNode?.nextNode
            count += 1
        }
        return currentNode?.value
    }
    
    func getCount() -> Int {
        var count = 0
        var currentNode = firstNode
        while currentNode != nil {
            currentNode = currentNode?.nextNode
            count += 1
        }
        return count
    }
    
    func getCountSmart() -> Int {
        return internalCount
    }
    
    func removeByIndex(index: Int) {
        var count = 0
        var currentNode = firstNode
        while count < index - 1 {
            currentNode = currentNode?.nextNode
            count += 1
        }
        currentNode?.nextNode = currentNode?.nextNode?.nextNode
    }
    
}

let linkedIntList = LinkedIntList()

linkedIntList.addToBack(value: 5)
linkedIntList.addToBack(value: 6)
linkedIntList.addToBack(value: 8)
linkedIntList.addToBack(value: 9)

//linkedIntList.clear()

//linkedIntList.addToStart(value: 1)

linkedIntList.removeByIndex(index: 1)

print(linkedIntList.getAll())

