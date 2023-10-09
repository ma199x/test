//
//  FirstViewController.swift
//  test
//
//  Created by Mohammed Ali on 09/10/2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var ClickMe: UIButton!
    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func clickMe(_ sender: Any) {
        let SecondUI = storyboard?.instantiateViewController(withIdentifier: "SecondID"
        ) as! SecondViewController
//        SecondUI.name = TextField.text!
        SecondUI.userData = UserInfo(name: "argteli", age: 12)
        navigationController?.pushViewController(SecondUI, animated: true)
//        present(SecondUI, animated: true, completion: nil)
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
