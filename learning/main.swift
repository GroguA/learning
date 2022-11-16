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
    switch name {
    case "Sasha":
        print("Привет, \(name)")
    case "Kakashka":
        print("Привет, \(name)")
    default: break
    }
}

printName()

