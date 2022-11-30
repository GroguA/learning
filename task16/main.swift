//
//  main.swift
//  task16
//
//  Created by Александра Сергеева on 24.11.2022.
//

import Foundation

//Write a function that takes a number and returns a list of its digits. So for 2342 it should return [2,3,4,2].

var newArray = [Int]()

func newListFromInts(integer: Int) -> Array<Int> {
    var number = integer
    while number % 10 != 0 {
        let ostatok = number % 10
        newArray.append(ostatok)
        number = number / 10
    }
    return newArray.reversed()
}

print(newListFromInts(integer: 132))
