//
//  main.swift
//  task10
//
//  Created by Александра Сергеева on 22.11.2022.
//

import Foundation

var array = [2, 5, 9, 7, 6]


func reverse(integers: Array<Int>) -> Array<Int> {
    var newArray = [Int]()
    for index in stride(from: integers.count - 1, through: 0, by: -1) {
        newArray.append(integers[index])
    }
    return newArray
}

//print(reverse(integers: array))

func reverseSmart(integers: inout Array<Int>) -> Array<Int> {
    for index in 0...(integers.count-1)/2 {
        var oppositeIndex = integers.count - (index + 1)
        var temp = integers[index]
        integers[index] = integers[oppositeIndex]
        integers[oppositeIndex] = temp
    }
    return integers
}

print(reverseSmart(integers: &array))

