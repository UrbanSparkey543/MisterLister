//
//  ViewController.swift
//  projectTwo
//
//  Created by Noah Ainsworth on 4/10/19.
//  Copyright © 2019 Noah Ainsworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    
    var selection:String! = "Groceries"
    
    @IBAction func goToList(_ sender: Any) {
        if (selection == "Groceries"){
            performSegue(withIdentifier: "groceriesSegue", sender: self)
            
        }
        else if (selection == "To Do"){
            performSegue(withIdentifier: "toDoSegue", sender: self)
        }
            
        else if (selection == "Goals"){
            performSegue(withIdentifier: "goalsSegue", sender: self)
        }
    }
    
    let items = ["Groceries", "To Do", "Goals"]
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
    }


}

