//
//  GoalsOneViewController.swift
//  projectTwo
//
//  Created by Noah Ainsworth on 4/14/19.
//  Copyright © 2019 Noah Ainsworth. All rights reserved.
//

import UIKit

class GoalsOneViewController: UIViewController {
    
    @IBOutlet weak var goalsAddItem: UITextField!
    
    @IBAction func keyboardHide(_ sender: Any) {
        goalsAddItem.resignFirstResponder()
    }
    
    @IBAction func goalsListAdd(_ sender: Any) {
        let newItem = goalsAddItem.text
        global.goalsList.append(newItem!)
        goalsAddItem.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
