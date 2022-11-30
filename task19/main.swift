//
//  main.swift
//  task19
//
//  Created by Александра Сергеева on 29.11.2022.
//

import Foundation

var array = [8, 21, 10, 54, 4]



func selectionSort(array: inout Array<Int>) {
    for index in 0..<array.count - 1 {
        var min = index
        for secondIndex in index + 1..<array.count {
            if array[secondIndex] < array[min] {
                min = secondIndex
            }
        }
        let temp = array[min]
        array[min] = array[index]
        array[index] = temp
        print(array)
    }
}

selectionSort(array: &array)
