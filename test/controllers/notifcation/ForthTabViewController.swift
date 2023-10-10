//
//  ForthTabViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

class ForthTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(bgchange), name:Notification.Name(bgNotificationKey), object: nil)
        // Do any additional setup after loading the view.
    }
    @objc func bgchange()
    {
        print("ForthTabViewController")
        view.backgroundColor = UIColor.blue
    }


}
