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
        
        guard let currentIndex = arr.firstIndex(of: viewController) else {
            return nil
        }
        let beforIndex = currentIndex - 1
        guard beforIndex >= 0 else {
            return arr.last
        }
        return arr[beforIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arr.firstIndex(of: viewController) else {
            return nil
        }
        let afterIndex = currentIndex + 1
        guard afterIndex < arr.count else {
            return arr.first
        }
        return arr[afterIndex]
        
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return arr.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    

}
