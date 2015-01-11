//
//  DetailViewController.swift
//  miniMoires
//
//  Created by Nieske Vergunst on 04-01-15.
//  Copyright (c) 2015 Lady Geek. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var entryTextField: UITextView!
    @IBOutlet var headerLabel: UINavigationItem!

    var detailItem: Entry? {
        didSet {
            // Update the view.
            self.configureView(detailItem)
        }
    }
    
    func configureView(detailItem: Entry?) {
        // Update the user interface for the detail item.
        if entryTextField != nil {
            entryTextField.text = detailItem!.text
            headerLabel.title = String(detailItem!.year)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView(detailItem!)
        self.automaticallyAdjustsScrollViewInsets = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

