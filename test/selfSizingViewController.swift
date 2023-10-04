//
//  selfSizingViewController.swift
//  test
//
//  Created by Mohammed Ali on 03/10/2023.
//

import UIKit

class selfSizingViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {
    
    var arr = [UIImage(named: "1")!,UIImage(named: "4")!,UIImage(named: "55")!]
    @IBOutlet weak var tbv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbv.delegate = self
        tbv.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbv.dequeueReusableCell(withIdentifier: "cellName", for: indexPath) as! selfSizingTableViewCell
        cell.photo.image = arr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let photo = arr[indexPath.row]
        let photoWithRatio = photo.size.width / photo.size.height
        return tbv.frame.width / photoWithRatio
    }
    

  

}
