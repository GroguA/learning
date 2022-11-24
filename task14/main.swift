//
//  main.swift
//  task14
//
//  Created by Александра Сергеева on 24.11.2022.
//

import Foundation

//func applyForAll(numbers: Array<Int>, functionForEachInt: (Int) -> Int) -> Array<Int> {
//    var newArray = [Int]()
//    for number in numbers {
//        let numbAfterAppliedFunction = functionForEachInt(number)
//        newArray.append(numbAfterAppliedFunction)
//    }
//    return newArray
//}
//
//let numbers = [1,2,3,4,5]
//let closureForEachNumber: (Int) -> Int = { (number: Int) -> Int in
//    return number + 1
//}

// Написать функцию которая принимает стрингу и кложуру, которая модифицирует стринг (т е принимает) и возвращает новый

func changesForNames(name: String, functionForName: (String) -> String) -> String {
    let stringAfterAppliedFunction = functionForName(name)
    return stringAfterAppliedFunction
}

//let closureThatSayHi: (String) -> String = { (str: String) -> String in
//    return "Hello, \(str)"
//}

let changeResult = changesForNames(name: "Sasha", functionForName: { (str: String) -> String in
    return "Hello, \(str)"
})
                                   
print(changeResult)
