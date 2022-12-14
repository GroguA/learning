//
//  main.swift
//  average of numbers
//
//  Created by Александра Сергеева on 09.12.2022.
//

import Foundation

func averageNum() {
    print("Введите числа")
    var sum = 0.0
    var result = 0.0
    if let numbers = readLine() {
        let convertedNumbers = numbers.components(separatedBy: " ")
        let arrayDouble = convertedNumbers.map {
            Double($0)!
        }
        for number in arrayDouble {
            sum = sum + number
        }
        result = sum / Double(arrayDouble.count)
        
        print(result)
    }
}



averageNum()
