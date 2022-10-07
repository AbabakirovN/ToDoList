//
//  AddeViewController.swift
//  todolist
//
//  Created by ITLabAdmin on 10/21/19.
//  Copyright © 2019 ITLabAdmin. All rights reserved.
//

import UIKit

protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}

class AddeViewController: UIViewController {
    var delegate: MyDataSendingDelegateProtocol? = nil
    var tTitle: String = ""
    var tDescription: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBOutlet weak var taskTitle: UITextField!
    @IBOutlet weak var taskDescription: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func create(_ sender: Any) {
        if taskTitle.text != "" && taskDescription.text != ""{
            taskTitles.append(taskTitle.text!)
            taskSubTitles.append(taskDescription.text!)
            dones.append(false)
        }
        if self.delegate != nil && self.taskTitle.text != nil && self.taskDescription != nil{
                let taskTitle = self.taskTitle.text
                let taskDescription = self.taskDescription.text
                self.delegate?.sendDataToFirstViewController(myData: taskTitle!)
            self.delegate?.sendDataToFirstViewController(myData: taskDescription!)
            
               dismiss(animated: true, completion: nil)
        }
    }
}

