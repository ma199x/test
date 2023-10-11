//
//  ContainerViewCotroller.swift
//  test
//
//  Created by Mohammed Ali on 11/10/2023.
//

import UIKit

class ContainerViewCotroller: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var arr = [UIViewController]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        dataSource = self
        
        if let vc1 = storyboard?.instantiateViewController(withIdentifier: "vc1")
        {
            arr.append(vc1)
        }
        if let vc2 = storyboard?.instantiateViewController(withIdentifier: "vc2")
        {
            arr.append(vc2)
        }
        if let vc3 = storyboard?.instantiateViewController(withIdentifier: "vc3")
        {
            arr.append(vc3)
        }
        if let firstVC = arr.first
        {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
   

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nil
    }
    

}
