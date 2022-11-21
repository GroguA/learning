//
//  main.swift
//  task5
//
//  Created by Александра Сергеева on 21.11.2022.
//

import Foundation

func simpleNumbersPrint() {
    let numbers = 2...100
    for number in numbers {
        var isSimple = true
        let dividers = 2..<number
        for divider in dividers {
            if number % divider == 0 {
                isSimple = false
                break
            }
        }
        print("\(isSimple) \(number)")
    }
}

simpleNumbersPrint()

