//
//  towViewController.swift
//  test
//
//  Created by Mohammed Ali on 09/10/2023.
//

import UIKit

class towViewController: UIViewController {
    var data = ""
    @IBOutlet weak var lab2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        lab2.text = data
    }
    @IBAction func unwindToDestination(_ unwindSegue: UIStoryboardSegue) {
        // Code to handle the unwind action goes here
    }


}
