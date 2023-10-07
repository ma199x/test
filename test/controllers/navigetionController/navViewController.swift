//
//  navViewController.swift
//  test
//
//  Created by Mohammed Ali on 07/10/2023.
//

import UIKit

class navViewController: UIViewController {

    override func viewDidLoad() 
    {
        super.viewDidLoad()
        
        title = "title .. "
//        let btn = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logout))
        
        let btn = UIBarButtonItem()
        btn.action = #selector(logout)
        btn.target = self
        btn.title = "logout"
        
        navigationController?.navigationBar.barTintColor = UIColor.red
        navigationItem.rightBarButtonItem = btn
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.tintColor = UIColor.white  // not work
        
    }
    @objc func logout()
    {
        print("logout done")
    }
    @IBAction func barButtnItem(_ sender: Any) {
        print("s")
    }
    
//    @IBAction func viewSecondView(_ sender: Any) {
//        let vc = self.storyboard?.instantiateViewController(identifier: "secondVC")
//        navigationController?.pushViewController(vc!, animated: true)
//    }
    
  

}
