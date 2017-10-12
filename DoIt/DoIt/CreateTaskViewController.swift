//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by William Schoettler on 9/14/17.
//  Copyright © 2017 William Schoettler. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        
        navigationController!.popViewController(animated: true)
    }
  

}
