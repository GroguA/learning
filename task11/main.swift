//
//  main.swift
//  task11
//
//  Created by Александра Сергеева on 22.11.2022.
//

import Foundation

let numbers = [5, 4, 3, 0, 1, 8, 9]

func evenIndex(numbers: Array<Int>) {
    var numbersWithevenIndexes = [Int]()
    for index in 0...numbers.count-1 {
        if index % 2 == 0 {
            numbersWithevenIndexes.append(numbers[index])
        }
    }
    print(numbersWithevenIndexes)
}

evenIndex(numbers: numbers)

