//
//  main.swift
//  task17
//
//  Created by Александра Сергеева on 25.11.2022.
//

import Foundation

var array = [11, 8, 5, 12, 11]

func buble(array: inout Array <Int>) {
    for index in 0...array.count - 2 {
        for secondIndex in index + 1..<array.count {
            if array[index] > array[secondIndex] {
                let temp = array[secondIndex]
                array[secondIndex] = array[index]
               array[index] = temp
            }
        }
    }
    print(array)
}

buble(array: &array)
