//
//  main.swift
//  fastfood
//
//  Created by Александра Сергеева on 06.12.2022.
//

import Foundation


func printFastFood() {
    let foodAndPrice: Dictionary<String, String> = ["burger": "5$", "pizza": "3$", "hot dog": "1.5$"]
    print("What meal do you want?")
    if let userMeal = readLine()?.lowercased() {
        if let result = foodAndPrice[userMeal] {
            print("\(userMeal) \(result )")
            
        }
        else {
            print("Error")
        }
    }
}

printFastFood()

