//
//  Entry.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

class Entry {
    var text: String
    var year: Int
    var createdDate: Int = 0
    var lastEditedDate: Int = 0
    init(year: Int, text: String) {
        self.year = year
        self.text = text
    }
}