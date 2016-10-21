//
//  ViewController.swift
//  Cap-able
//
//  Created by Ravi on 7/4/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let bgImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        //bgImage.image = UIImage(named: "library-bg")
        
        //self.view.addSubview(bgImage)
        //self.view.insertSubview(bgImage, atIndex: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.performSegueWithIdentifier("register", sender: self)
    }
}

