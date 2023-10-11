//
//  PickerViewController.swift
//  test
//
//  Created by Mohammed Ali on 11/10/2023.
//

import UIKit

class PickerViewController: UIViewController {
    
    var arr = ["1","2","3"]
    @IBOutlet weak var mytextField: UITextField!
    var currentIndex = 0
    var myPicker = UIPickerView()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        myPicker.delegate = self
        myPicker.dataSource = self
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(whenDone))
        toolBar.setItems([btnDone], animated: true)
        mytextField.inputView = myPicker
        mytextField.inputAccessoryView = toolBar
    }
}



extension PickerViewController : UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      
        view.endEditing(true)
    }
}




extension PickerViewController : UIPickerViewDelegate,UIPickerViewDataSource{
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
        currentIndex = row
//        mytextField.text = "\(arr[row])"
    }
    
    
    @objc func whenDone()
    {
   
        mytextField.text = "\(arr[currentIndex])"
        view.endEditing(true)
    }
    
}
