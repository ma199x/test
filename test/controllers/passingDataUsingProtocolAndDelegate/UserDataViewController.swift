//
//  UserDataViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

protocol UserDataDelegate {
    func didSelectUserData(inputFoomTextField: String)
}



class UserDataViewController: UIViewController {

    var myDelegate : UserDataDelegate?
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labUserData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func btnBackUserProfile(_ sender: Any) {
        if let text = textField.text{
            myDelegate?.didSelectUserData(inputFoomTextField: text)
          dismiss(animated: true)
        }
      
        
    }
    
}
