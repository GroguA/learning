//
//  main.swift
//  task9
//
//  Created by Александра Сергеева on 22.11.2022.
//

import Foundation

var integers = [-1, -5, -7, -8, -6, -3, -11]
 
func getMax(integers: Array<Int>) -> Int {
    var max = integers[0]
    for integer in integers {
        if integer > max {
            max = integer
        }
    }
    return max
}

print(getMax(integers: integers))
