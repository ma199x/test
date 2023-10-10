//
//  UserProfileViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

class UserProfileViewController: UIViewController ,UserDataDelegate{
    func didSelectUserData(inputFoomTextField: String) {
        labUserData.text = inputFoomTextField
    }
    
   
    

    @IBOutlet weak var labUserData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func GetUserData(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "userData") as! UserDataViewController
        vc.myDelegate = self
        present(vc, animated: true)
    }
    
    

}
