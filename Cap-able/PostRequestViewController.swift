//
//  PostRequestViewController.swift
//  Cap-able
//
//  Created by Ravi on 7/4/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import UIKit

class PostRequestViewController: UIViewController {
    
    @IBOutlet weak var PostButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        PostButton.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
    }
        
    func buttonAction(sender:UIButton!) {
        print("Button tapped")
        let alertController = UIAlertController(title: "Post update", message:
            "You have 1 new bid!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Show bidders", style: UIAlertActionStyle.Default, handler: showBidders))
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Cancel, handler: nil))

        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func showBidders(alert: UIAlertAction) {
        self.performSegueWithIdentifier("post", sender: PostButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
