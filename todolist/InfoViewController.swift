//
//  InfoViewController.swift
//  todolist
//
//  Created by ITLabAdmin on 10/22/19.
//  Copyright © 2019 ITLabAdmin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var tTitle: UITextField!
    @IBOutlet weak var tDescription: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tTitle.text = taskTitles[indexAt]
        tDescription.text = taskSubTitles[indexAt]
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func save(_ sender: Any) {
        taskTitles[indexAt] = tTitle.text!
        taskSubTitles[indexAt] = tDescription.text!
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
