//
//  Person.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

class Person {
    var name: String
    var birthyear: Int
    init(name: String, birthyear: Int) {
        self.name = name
        self.birthyear = birthyear
    }
    func changeName(name: String) -> Void {
        self.name = name
    }
}