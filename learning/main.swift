//
//  main.swift
//  learning
//
//  Created by Александра Сергеева on 16.11.2022.
//

import Foundation

func printName() {
    print("Введите имя")
    let name = readLine() ?? "no name"
    let lowCasedName = name.lowercased()
    switch lowCasedName {
    case "sasha", "kakashka":
        print("Привет, \(lowCasedName)")
    default: break
    }
}

printName()

