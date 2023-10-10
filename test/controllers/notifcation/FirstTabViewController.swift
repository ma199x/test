//
//  FirstTabViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

let bgNotificationKey = "changeBackground"
class FirstTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPostNotification(_ sender: Any) 
    {
        var color = UIColor.white
        NotificationCenter.default.post(name: NSNotification.Name(bgNotificationKey), object: color)
    }
  

}
