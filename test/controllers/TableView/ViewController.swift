//
//  ViewController.swift
//  test
//
//  Created by Mohammed Ali on 02/10/2023.
//

import UIKit

class ViewController: UIViewController  , UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var mytb: UITableView!
    var arr = [test]()
    override func viewDidLoad() {
        super.viewDidLoad()
        mytb.delegate = self
        mytb.dataSource = self
        arr.append(test(name: "s", price: 11, photo: UIImage(named:"photo-1497250681960-ef046c08a56e" )!))
        arr.append(test(name: "ssef", price: 113, photo: UIImage(named:"photo-1497250681960-ef046c08a56e" )!))

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytb.dequeueReusableCell(withIdentifier:"mycell") as! TableViewCell
        let data =  arr[indexPath.row]
        cell.btn.tag = indexPath.row
        cell.btn.addTarget(self, action: #selector(myfunc(sender:)), for: .touchUpInside)
        print(indexPath.row)
        cell.setUp(_name: data.name, _photo: data.photo, _price: data.price)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
    }
    @objc func myfunc (sender : UIButton){
        if let currentImage = sender.image(for: .normal)
        {
            print("1")
            if currentImage == UIImage(systemName: "heart.fill")
            {
                print("2")
                sender.setImage(UIImage(systemName: "heart"), for: .normal)
            }
            else {
                print("3")
                sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            }
        }
        else {
                sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            }
        
    }

   
}
struct test {
    let name : String
    let price : Double
    let photo : UIImage
}
