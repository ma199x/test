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
        
        // can  do this to create bar button item
        //let leftBtn = UIBarButtonItem(title: "back", style: .plain, target: self, action: #selector(back))
        //navigationItem.leftBarButtonItem = leftBtn
        
        //or can do this to create bar button item
        let secondLeftBtn = UIBarButtonItem()
        secondLeftBtn.target = self
        secondLeftBtn.action = #selector(back)
        secondLeftBtn.title = "back"
        
        navigationItem.leftBarButtonItem = secondLeftBtn
        
        // disable large title
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.tintColor = UIColor.red
        
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.backgroundColor = UIColor.blue
//        navigationController?.navigationBar.barTintColor = UIColor.green
        

        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.yellow ,NSAttributedString.Key.font : UIFont(name: "Helvetica-Bold", size: 22)!]
    }
    @objc func back()
    {
        print("back")
    }

   
  
    @IBAction func cilckme(_ sender: Any) {
         let goBtn = storyboard?.instantiateViewController(withIdentifier: "cilck")
        navigationController?.pushViewController(goBtn!, animated: true)
    }
   
    
    @IBAction func edit(_ sender: Any) {
        print("edit")
    }
    

}
