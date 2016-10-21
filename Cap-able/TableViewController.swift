//
//  TableViewController.swift
//  Cap-able
//
//  Created by Ravi on 8/4/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var AmyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AmyButton.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func buttonAction(sender:UIButton!) {
        print("Amy Button tapped")
        self.performSegueWithIdentifier("amy", sender: AmyButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

