//
//  RefreshViewController.swift
//  test
//
//  Created by Mohammed Ali on 03/10/2023.
//

import UIKit

class RefreshViewController: UIViewController ,UITableViewDataSource , UITabBarDelegate, UITableViewDelegate{
    
    
    let refreshControll =  UIRefreshControl()
    var arr = [String]()
   
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tb.delegate = self
        tb.dataSource = self
        
        refreshControll.tintColor = UIColor.gray
        refreshControll.addTarget(self, action: #selector(getData), for: .valueChanged)
        tb.addSubview(refreshControll)
    }
    
    @objc func getData()
    {
        arr.append("value \(arr.count)")
        refreshControll.endRefreshing()
        tb.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cellName", for:  indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

}
