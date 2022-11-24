//
//  main.swift
//  task15
//
//  Created by Александра Сергеева on 24.11.2022.
//

import Foundation

//Write a function that соединяет two lists. [a,b,c], [1,2,3] → [a,b,c,1,2,3]

let characters = ["a", "b", "c"]

let numbers = [1, 2, 3]

func mergingArrays(firstArrayStr: Array<String>, secondArrayInt: Array<Int>) -> Array<String> {
    var newArray  = [String]()
    for number in secondArrayInt {
        let convertedNumb = String(number)
        newArray.append(convertedNumb)
    }
    for string in firstArrayStr {
        newArray.append(string)
    }
    return newArray
}

print(mergingArrays(firstArrayStr: characters, secondArrayInt: numbers))
