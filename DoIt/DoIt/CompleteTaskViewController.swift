//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by William Schoettler on 9/27/17.
//  Copyright © 2017 William Schoettler. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important {
            taskLabel.text! = "❗️ \(task!.name!)"
        }
        else {
            taskLabel.text! = task!.name!
        }
    }


    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
