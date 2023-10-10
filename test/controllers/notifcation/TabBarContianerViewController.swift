//
//  TabBarContianerViewController.swift
//  test
//
//  Created by Mohammed Ali on 10/10/2023.
//

import UIKit

class TabBarContianerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let vc =  viewControllers?[1] as? SecondTabViewController{
            NotificationCenter.default.addObserver(vc, selector: #selector(vc.bgchange(noitif:)), name: NSNotification.Name(bgNotificationKey), object: nil)
        }
        self.tabBar.isTranslucent =  false
        self.tabBar.backgroundColor = UIColor.white
       
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
