//
//  SecondViewController.swift
//  test
//
//  Created by Mohammed Ali on 09/10/2023.
//

import UIKit

class SecondViewController: UIViewController {
    var userData:UserInfo?
    @IBOutlet weak var myLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user =  userData {
            myLable.text = "\(user.name)!  \(user.age)"
        }
      
       
        
    }
}

struct UserInfo{
    var name:String
    var age: Int
   
}
