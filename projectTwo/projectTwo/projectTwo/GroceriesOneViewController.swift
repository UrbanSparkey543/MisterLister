//
//  GroceriesOneViewController.swift
//  projectTwo
//
//  Created by Noah Ainsworth on 4/14/19.
//  Copyright © 2019 Noah Ainsworth. All rights reserved.
//

import UIKit

class Global{
    var grocList = [String]()
    var toDoList = [String]()
    var goalsList = [String]()
}

let global = Global()

class GroceriesOneViewController: UIViewController {
    
    @IBAction func keyboardHide(_ sender: Any) {
        grocAddItem.resignFirstResponder()
    }
    
    @IBOutlet weak var grocAddItem: UITextField!
    
    @IBAction func grocListAdd(_ sender: UIButton) {
        let newItem = grocAddItem.text
        global.grocList.append(newItem!)
        grocAddItem.text = ""
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
