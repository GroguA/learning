//
//  main.swift
//  task13
//
//  Created by Александра Сергеева on 23.11.2022.
//

import Foundation

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func isItPalindrome(str: String) -> Bool {
    for index in 0...(str.count-1)/2 {
        var oppositeIndex = str.count - (index + 1)
        var isTwoCharactersEqual = str[index].lowercased() == str[oppositeIndex].lowercased()
        
        if !isTwoCharactersEqual {
            return false
        }
    }
    return true
}

print(isItPalindrome(str: "Довод"))
