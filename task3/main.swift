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
        if let convertNumber = Int(number) {
            var sum = 0
            for count in 1...convertNumber {
                sum = sum + count
            }
            print(sum)
            }
        }
    }

printSum()
