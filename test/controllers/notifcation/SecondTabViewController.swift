//
//  SecondTabViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

class SecondTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    @objc func bgchange(noitif : Notification)
    {
        if let color = noitif.object as? UIColor {
            print("SecondTabViewController")
            view.backgroundColor = UIColor.gray
        }
       
    }
    deinit{
        print("f")
        NotificationCenter.default.removeObserver(self)
    }


}
