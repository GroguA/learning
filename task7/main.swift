//
//  main.swift
//  task7
//
//  Created by Александра Сергеева on 21.11.2022.
//

import Foundation

struct Human {
    var heigh: Int
    var name: String
}

var humans = [Human]()

humans.append(Human(heigh: 156, name: "Sasha"))
humans.append(Human(heigh: 162, name: "Masha"))
humans.append(Human(heigh: 166, name: "Dasha"))
humans.append(Human(heigh: 169, name: "Glasha"))
humans.append(Human(heigh: 171, name: "Ivasha"))
humans.append(Human(heigh: 173, name: "Natasha"))
humans.append(Human(heigh: 177, name: "Prostokvasha"))
humans.append(Human(heigh: 180, name: "Prokasha"))

// найти в массиве хьюманс человека с ростом 166 и вывести его имя

for human in humans {
    if human.heigh == 166 {
        print (human.name)
    }
}

// 166 8 ivasha, sasha..glasha
func binarySearch(heigh: Int, humans: Array<Human>) {
    var searchableHumans = humans
    while searchableHumans.count > 1 {
        let middleIndex = searchableHumans.count / 2
        let humanToCompare = searchableHumans[middleIndex]
        if humanToCompare.heigh > heigh {
            searchableHumans = Array(searchableHumans[0..<middleIndex])
        } else if humanToCompare.heigh < heigh  {
            searchableHumans = Array(searchableHumans[middleIndex + 1...searchableHumans.endIndex])
        } else {
            searchableHumans = [searchableHumans[middleIndex]]
            print(searchableHumans[0].name)
        }
    }
}

binarySearch(heigh: 166, humans: humans)
