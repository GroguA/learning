//
//  main.swift
//  task18
//
//  Created by Александра Сергеева on 29.11.2022.
//

import Foundation

var array = [4, 21, 10, 54, 8]

func bubbleSort(array: inout Array <Int>) {
    for index in 0..<array.count - 1 {
        for secondIndex in 0..<array.count - 1 - index {
            if array[secondIndex] > array[secondIndex + 1] {
                let temp = array[secondIndex + 1]
                array[secondIndex + 1] = array[secondIndex]
                array[secondIndex] = temp
            }
        }
        print(array)
    }
}

bubbleSort(array: &array)
