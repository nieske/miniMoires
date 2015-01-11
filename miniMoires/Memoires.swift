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
        addEntry(Entry(year: 2014, text: "Het was een leuk jaar."))
        addEntry(Entry(year: 2001, text: "Een nieuwe eeuw!"))
        addEntry(Entry(year: 1983, text: "Cupcake ipsum dolor sit amet cake. Tart jelly gingerbread lemon drops icing topping. I love brownie pudding. I love candy macaroon liquorice cupcake carrot cake danish chocolate cake dessert. I love caramels tart powder applicake lollipop bonbon. Tiramisu danish candy canes. Sugar plum jelly icing toffee. I love sweet powder jujubes liquorice gummies I love. I love cotton candy danish gummi bears bear claw icing tart gummies. Macaroon jujubes toffee tiramisu tiramisu pudding macaroon oat cake. Cookie cupcake pudding macaroon marzipan marshmallow muffin. Bonbon apple pie oat cake I love I love marzipan. Macaroon I love macaroon chocolate cake I love marzipan cheesecake sesame snaps. Bear claw chocolate cake tootsie roll chocolate cake gingerbread. Cake gummi bears cake. Topping I love sweet I love cookie. Pudding carrot cake caramels tiramisu. Candy canes topping jujubes cheesecake biscuit I love. Sugar plum lemon drops cupcake chocolate bar carrot cake oat cake. Cookie chocolate bar I love marshmallow powder wafer. Pudding brownie pudding I love brownie I love pastry soufflé. Halvah candy sweet roll I love tart. Tart halvah chocolate bar lemon drops soufflé marshmallow topping tart pastry. Chocolate sesame snaps danish jelly beans pastry pie pudding dessert lemon drops. Brownie gingerbread carrot cake I love applicake bear claw tootsie roll dessert. Jujubes macaroon I love I love. Oat cake tiramisu tiramisu gummi bears. Jelly fruitcake I love dragée I love carrot cake caramels. Sweet unerdwear.com gummies sesame snaps liquorice I love bonbon ice cream. Marzipan cookie apple pie cookie I love I love I love halvah. Candy muffin ice cream cheesecake lollipop. Apple pie jujubes lemon drops cake candy canes marzipan. Cookie soufflé cookie pastry. I love I love sesame snaps I love. Oat cake jelly I love marshmallow topping I love. Carrot cake sweet roll candy. Wafer gingerbread gummies oat cake. Chupa chups danish cheesecake dessert candy cake chocolate bar cookie I love."))
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
            return "No text yet for this entry."
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
    
    func deleteEntry(year: Int) -> Void {
        entries.removeValueForKey(year)
    }
    
}



