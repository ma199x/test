//
//  segmentedViewController.swift
//  test
//
//  Created by Mohammed Ali on 11/10/2023.
//

import UIKit

class segmentedViewController: UIViewController {
   
    

    @IBOutlet weak var mySegmented: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPicker.delegate = self
        myPicker.dataSource = self
    
    }
    
    @IBAction func myslider(_ sender: Any) {
        
    }
    var canReciveNot = false
    @IBAction func test(_ sender: Any) {
//        print("Index  \(mySegmented.selectedSegmentIndex) \nvalue \(mySegmented.titleForSegment(at: mySegmented.selectedSegmentIndex))")
    }
    @IBOutlet weak var myLable: UILabel!
    @IBAction func SwitchDidChange(_ sender: UISwitch) {
        print(sender.isOn)
        canReciveNot = sender.isOn
    }
 
   
    @IBAction func SilderDidChange(_ sender: UISlider) {
        myLable.font = UIFont(name: myLable.font.fontName, size: CGFloat(sender.value) )
    }
    
    
    @IBOutlet weak var mylable2: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    var arr = ["a","s","sd","ae","sfre","sed"]
    
    @IBOutlet weak var myTextField: UITextField!
    
}










extension segmentedViewController : UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBAction func btnGetData(_ sender: Any) {
        mylable2.text = "\(arr[myPicker.selectedRow(inComponent: 0)])   "
    }
    
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        mylable2.text = arr[row]
        
                           
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        mylable2.attributedText = NSAttributedString(string: arr[3], attributes: [NSAttributedString.Key.backgroundColor :UIColor.blue ])
        return  NSAttributedString(string: arr[row], attributes: [NSAttributedString.Key.foregroundColor :UIColor.red])
        
    }
}
