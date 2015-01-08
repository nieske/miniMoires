//
//  MemoiresModel.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

class Memoires {
    var person: Person
    var entries: [Int: Entry] = [:]
    init(person: Person) {
        self.person = person
        addEntry(Entry(year: 2014, text: "Het was een leuk jaar"))
        addEntry(Entry(year: 2001, text: "Een nieuwe eeuw!"))
        addEntry(Entry(year: 1983, text: "Ik werd geboren. Ik weet het nog goed."))
    }
    
    func addEntry(entry: Entry) -> Void {
//        if entry.year >= person.birthyear {
            entries[entry.year] = entry
            println("added entry \(entry.year), total \(entries.count) entries")
//        }
//        else if entry already exists {
//            display "This entry already exists. Do you want to edit?"
//        }
//        else {
//            display "Are you sure? This is before you were born."
//            maybe option to override? (e.g. year my parents met)
//        }
    }
    
    func getEntry(year: Int) -> Entry? {
        return entries[year]
    }
    
    func getEntryText(year: Int) -> String {
        if entries[year] != nil {
            return entries[year]!.text
        }
        else {
            return "This entry does not exist."
        }
    }
    
    func countEntries() -> Int {
        return entries.count
    }
    
    func listYears() -> [Int] {
        var list = [Int](entries.keys)
        return list.sorted { $0 < $1 }
    }
    
    func getFirstUnusedYear() -> Int {
        var year = person.birthyear
        while getEntry(year) != nil {
            ++year
        }
        return year
    }
    
}



