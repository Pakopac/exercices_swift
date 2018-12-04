//
//  exercice_2.swift
//  exercice
//
//  Created by SUP'Internet 09 on 09/11/2018.
//  Copyright © 2018 SUP'Internet 09. All rights reserved.
//

import Foundation

func cleanHobbits(arr : [String]){
    var newArray: [String] = arr
    newArray.remove(at:0)
    newArray.remove(at:newArray.count-1)
    var reversedArray = [String]()
    
    for arrayIndex in stride(from: newArray.count - 1, through: 0, by: -1) {
        reversedArray.append(newArray[arrayIndex])
    }
    let Elts = (arr[0],arr[arr.count-1],reversedArray,reversedArray.count)
    print(Elts)
}
