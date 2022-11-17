//
//  main.swift
//  task3
//
//  Created by Александра Сергеева on 16.11.2022.
//

import Foundation

func printSum() {
    print("Введите число")
    if let number = readLine() {
        if let convertedNumber = Int(number) {
            var sum = 0
            for count in 1...convertedNumber where count % 3 == 0 || count % 5 == 0 {
                sum = sum + count
            }
            print("Сумма чисел от 1 до \(convertedNumber) равна \(sum)")
        } else {
            print("Неправильный ввод")
        }
    }
}

printSum()
