//
//  oneViewController.swift
//  test
//
//  Created by Mohammed Ali on 09/10/2023.
//

import UIKit

class ThirdViewController: UIViewController {
    var myData = ""
    @IBOutlet weak var labData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? FourthViewController
        {
            vc.data = "i am from 3"
        }
    }
    
    @IBAction func unwindTo4 (sender:UIStoryboardSegue )
    {
//        labData.text = myData
//        print("f")
    }


}
