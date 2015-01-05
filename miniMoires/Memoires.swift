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
//        }
            // else if entry already exists {
            // tell user: this entry already exists. Do you want to edit?
            // }
//        else {
//            println("Are you sure? This is before you were born.")
            // how to display this on the screen?
            // also maybe option to override (e.g. year my parents met)
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
        return [Int](entries.keys)
    }

    
//functie maken die entry met bepaalde index geeft
    
}



