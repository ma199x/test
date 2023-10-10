//
//  ThreeViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

class FifthViewController: UIViewController {
var data = ""
    @IBOutlet weak var labData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        labData.text = data
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc =  segue.destination as? FourthViewController{
            vc.data = "i am from fifth"
        }
    }
}
