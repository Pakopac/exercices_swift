//
//  exercice_1.swift
//  exercice
//
//  Created by SUP'Internet 09 on 09/11/2018.
//  Copyright © 2018 SUP'Internet 09. All rights reserved.
//

import Foundation

func condog(str: String, prefix: Character, suffix: String){
    var newStr = String(prefix)
    newStr.append(str)
    newStr.append(suffix)
    print(newStr)
}
