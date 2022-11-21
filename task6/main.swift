//
//  main.swift
//  task6
//
//  Created by Александра Сергеева on 21.11.2022.
//

import Foundation

func guessNumber(number: Int) {
    print("Введите число")
    if let guessedNumber = readLine() {
        if let convertedGuessNumber = Int(guessedNumber) {
            if number < convertedGuessNumber {
                print("Загаданное число меньше введеного")
                  guessNumber(number: number)
            } else if number > convertedGuessNumber {
                print("Загаданное число больше введеного")
                guessNumber(number: number)
            } else {
                print("Вы угадали")
            }
        }
    }
}

guessNumber(number: 9)

