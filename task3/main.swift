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
            let sum = 0...convertNumber
            print("\(sum.reduce(0, +))")
            }
        }
    }

printSum()
