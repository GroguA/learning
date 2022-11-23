//
//  main.swift
//  task12
//
//  Created by Александра Сергеева on 23.11.2022.
//

import Foundation

var numbers = [1, 6, 8, 12, 4]

func сhecking(list: Array<Int>, numberInList: Int) -> Bool {
    for number in list {
        if numberInList == number {
            return true
        }
    }
        return false
}

print(сhecking(list: numbers, numberInList: 12))
