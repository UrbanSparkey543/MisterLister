//
//  ToDoTwoViewController.swift
//  projectTwo
//
//  Created by Noah Ainsworth on 4/14/19.
//  Copyright © 2019 Noah Ainsworth. All rights reserved.
//

import UIKit

class ToDoTwoViewController: UIViewController {

    @IBOutlet weak var toDoListPrint: UILabel!
    
    @IBAction func clearList(_ sender: Any) {
        global.toDoList.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        for (index, toDoList) in global.toDoList.enumerated() {
            toDoListPrint.text? += "\n\(global.toDoList[index])"
            
        }
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
