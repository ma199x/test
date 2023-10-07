//
//  TCViewController.swift
//  test
//
//  Created by Mohammed Ali on 07/10/2023.
//

import UIKit

class TCViewController: UIViewController,UITableViewDelegate ,UITableViewDataSource {

    var arr = [Product]()
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tb.delegate = self
        tb.dataSource = self
        
        arr.append(Product(title: "t1", img: [UIImage(named: "1")!,UIImage(named: "1")!,UIImage(named: "2")!,UIImage(named: "1")!,UIImage(named: "2")!,UIImage(named: "1")!,UIImage(named: "2")!,UIImage(named: "1")!,UIImage(named: "1")!,]))
        
        arr.append(Product(title: "t2", img: [UIImage(named: "p2")!,UIImage(named: "1")!,UIImage(named: "p1")!,UIImage(named: "1")!,UIImage(named: "p1")!,UIImage(named: "1")!,UIImage(named: "p1")!,UIImage(named: "1")!,UIImage(named: "1")!,]))
        
        arr.append(Product(title: "t3", img: [UIImage(named: "p1")!,UIImage(named: "p1")!,UIImage(named: "1")!,UIImage(named: "1")!,UIImage(named: "1")!,UIImage(named: "1")!,UIImage(named: "1")!,UIImage(named: "1")!,UIImage(named: "1")!,]))
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cellName", for: indexPath) as! TCTableViewCell
        cell.setInfo(img: arr[indexPath.row].img, title: arr[indexPath.row].title)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
  

}

struct Product{
    var title:String
    var img :[UIImage]
}
