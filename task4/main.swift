//
//  main.swift
//  task4
//
//  Created by Александра Сергеева on 18.11.2022.
//

import Foundation

func multiplication() {
    let numbers = [1, 2, 3, 4, 5]
    for number in numbers {
        for secondNumber in numbers {
            let result = number * secondNumber
            let resultForPrint = "\(number) * \(secondNumber) = \(result)"
            print(resultForPrint)
        }
        print("")
    }
}

multiplication()
