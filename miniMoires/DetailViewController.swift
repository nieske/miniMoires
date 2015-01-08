//
//  DetailViewController.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailDescriptionLabel: UILabel!

    @IBOutlet var entryTextField: UITextView!
    
    // hier even voor de nep een memoire definiëren
    let memoires = Memoires(person: Person(name: "nieske", birthyear: 1983))
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView(detailItem)
        }
    }
    
    func configureView(detailItem: AnyObject?) {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let entry = self.entryTextField {
                entry.text = memoires.getEntryText(Int(detail as NSNumber))
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView(detailItem)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

