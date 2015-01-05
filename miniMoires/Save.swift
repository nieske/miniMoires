//
//  Save.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

import CoreData

class Save {
    func save(memoires: Memoires) -> Void {
        let documentDirs = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true)
        let person = memoires.person
        let entries = memoires.entries
        
        if documentDirs != nil {
            let fileName = person.name + ".txt"
            let dir = documentDirs[0] as String
            let saveFile = dir.stringByAppendingPathComponent(fileName)
            let text = makeText(entries)
            
            // writing
            text.writeToFile(saveFile, atomically: false, encoding: NSUTF8StringEncoding, error: nil)
            
//            // reading
//            let text2 = String(contentsOfFile: saveFile, encoding: NSUTF8StringEncoding, error: nil)
        }
    }
    
    func saveEntry(person: Person, entry: Entry) -> Void {
        let documentDirs = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true)
        
        if documentDirs != nil {
            let fileName = "\(person.name).\(entry.year).txt"
            let dir = documentDirs[0] as String
            let saveFile = dir.stringByAppendingPathComponent(fileName)
            let text = entry.text
            
            // writing
            text.writeToFile(saveFile, atomically: false, encoding: NSUTF8StringEncoding, error: nil)
            
//            // reading
//            let text2 = String(contentsOfFile: saveFile, encoding: NSUTF8StringEncoding, error: nil)
        }
    }
    
    func makeText(dictionary: [Int: Entry]) -> String {
        var text = ""
        for (year, entry) in dictionary {
            text += "\(year)\n\(entry.text)\n\n"
        }
        return text
    }
    
}

