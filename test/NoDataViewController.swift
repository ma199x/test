//
//  NoDataViewController.swift
//  test
//
//  Created by Mohammed Ali on 04/10/2023.
//

import UIKit

class NoDataViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    
    var arr = ["1","2","3"]
    @IBOutlet weak var tb:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tb.delegate = self
        tb.dataSource = self
       
        arr.removeAll()
        if arr.count == 0 {
            tb.isHidden = true
            let ImgError = UIImageView(frame: CGRect(x: 50,
                                                     y: 100,
                                                     width: self.view.frame.width - 100,
                                                     height: self.view.frame.height - 200))
            if let image =  UIImage(systemName: "heart")
            {
                ImgError.image = image
                ImgError.tintColor = UIColor.gray
                self.view.addSubview(ImgError)
            }
            else{
                print("unable create ui image")
            }
            let Xpostion = (self.view.frame.width / 2 ) - (100 / 2)
            let labMsg = UILabel(frame: CGRect(x:Xpostion ,
                                               y: ImgError.frame.height + 50,
                                               width: 100, height: 10))
            labMsg.text = "ssdsd'sld;'sdl"
            labMsg.backgroundColor = UIColor.red
            self.view.addSubview(labMsg)
            
           


        }
          
      
            
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

   
}
