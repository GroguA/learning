//
//  main.swift
//  task8
//
//  Created by Александра Сергеева on 22.11.2022.
//

import Foundation

func isYearleap(year: Int) -> Bool {
    if year % 4 == 0 {
        if year % 100 != 0 {
            return true
        } else {
            if year % 400 == 0 {
                return true
            } else {
                return false
            }
        }
    } else {
        return false
    }
}

func twentyYearsLeap() {
    var currentYear = 2022
    var count = 0
    while count != 20 {
        if isYearleap(year: currentYear) {
            count += 1
            print(isYearleap(year: currentYear), currentYear)
        }
        currentYear += 1
    }
}

twentyYearsLeap()
