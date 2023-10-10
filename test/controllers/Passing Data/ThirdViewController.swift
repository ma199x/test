//
//  oneViewController.swift
//  test
//
//  Created by Mohammed Ali on 09/10/2023.
//

import UIKit

class oneViewController: UIViewController {
    var myData = ""
    @IBOutlet weak var lab1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goTo2"{
//            
//        }
//        if segue.destination == threeViewController{
//            
//        }
        
        if let VC = segue.destination as? towViewController{
            VC.data = "transfer from 1 to 2 "
        }
    }

}
