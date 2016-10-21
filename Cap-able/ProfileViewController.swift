//
//  ProfileViewController.swift
//  Cap-able
//
//  Created by Ravi on 8/4/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import UIKit
import Foundation

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    var ImageView : UIImageView!
    
    var easterEgg = 0;
    @IBOutlet weak var AcceptButton: UIButton!
    
    var easterEgg2 = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("profile loaded")
        
        let image = UIImage(named: "amytan-profile")!
        ImageView = UIImageView(image: image)
        ImageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: image.size)
        ScrollView.scrollEnabled = true
        ScrollView.contentSize.width = 420
        ScrollView.contentSize.height = image.size.height
        
        ScrollView.addSubview(ImageView)
        
        AcceptButton.addTarget(self, action: "easterEgg:", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func easterEgg(sender:UIButton!) {
        easterEgg++
        print(easterEgg)
        
        if(easterEgg2 > 0) {
            reminder()
        }
        else if(easterEgg == 7) {
            easterEgg2++;
            excitedAlert()
        }
    }
    
    func excitedAlert() {
        let alertController = UIAlertController(title: "Woah there", message:
            "Someone is a little excited", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "I understand, this is just a demo", style: UIAlertActionStyle.Cancel, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func reminder() {
        let alertController = UIAlertController(title: "Reminder", message:
            "What did I tell you man?", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "I'm just lonely", style: UIAlertActionStyle.Default, handler: nil))
        alertController.addAction(UIAlertAction(title: "I understand, this is just a demo", style: UIAlertActionStyle.Cancel, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}