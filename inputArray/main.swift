//
//  main.swift
//  input array
//
//  Created by Александра Сергеева on 07.12.2022.
//

import Foundation

func printUniqueNumber() {
    print("Введите числа")
    if let numbers = readLine() {
        let convertedNumbers = numbers.components(separatedBy: " ")
        let arrayInt = convertedNumbers.map {
            Int($0)
        }
        print(arrayInt)
        var uniqueNums = Set<Int>()
        for number in arrayInt {
            if let nonOptNum = number {
                uniqueNums.insert(nonOptNum)
            }
        }
        print(uniqueNums)
        print(uniqueNums.count)
    }
}

printUniqueNumber()
