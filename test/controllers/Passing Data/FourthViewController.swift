//
//  towViewController.swift
//  test
//
//  Created by Mohammed Ali on 09/10/2023.
//

import UIKit

class FourthViewController: UIViewController {
    var data = ""
    @IBOutlet weak var labData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        labData.text = data
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc =  segue.destination as? FifthViewController{
            vc.data = "i am from 4"
        }
    }
    
   
}
