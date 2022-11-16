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
    let sName = name.lowercased()
    switch sName {
    case "sasha", "kakashka":
        print("Привет, \(sName)")
    default: break
    }
}

printName()

