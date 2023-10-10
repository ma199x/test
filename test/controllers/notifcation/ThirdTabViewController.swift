//
//  ThirdTabViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

class ThirdTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(bgchange), name: NSNotification.Name(bgNotificationKey), object: nil)
    }
    @objc func bgchange(reseverNotification: Notification)
    {
        if let color =  reseverNotification.object as? UIColor{
            view.backgroundColor = color
        }
        
    }

}
