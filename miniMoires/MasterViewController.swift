//
//  MasterViewController.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    // hier even voor de nep een memoire definiëren
    let memoires = Memoires(person: Person(name: "nieske", birthyear: 1983))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
    }

    func insertNewObject(sender: AnyObject) {
        let year = memoires.getFirstUnusedYear()
        memoires.addEntry(Entry(year: year, text: ""))
        let indexPath = NSIndexPath(forRow: find(memoires.listYears(), year)!, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Left)
    }
    
    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let year = memoires.listYears()[indexPath.row]
                if let entry = memoires.getEntry(year) {
                    (segue.destinationViewController as DetailViewController).detailItem = entry
                }
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoires.countEntries()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = String(memoires.listYears()[indexPath.row])
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            let year = memoires.listYears()[indexPath.row]
            memoires.deleteEntry(year)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}
