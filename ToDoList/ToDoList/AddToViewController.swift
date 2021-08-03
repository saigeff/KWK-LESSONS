//
//  AddToViewController.swift
//  ToDoList
//
//  Created by Saige Forbes on 8/2/21.
//

import UIKit
import CoreData

class AddToViewController: UIViewController {
    
    var previousToDoVC = ToDoTableViewController()

    @IBOutlet weak var decriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        let ToDoCD = ToDoCD(context: dataFromCoreData)
        
//        let newToDo = ToDoClass()
//
//        if let checkForInput = decriptionInput.text{
//            newToDo.description = checkForInput
//            newToDo.important = switchInput.isOn
//        }
//
//        previousToDoVC.listOfToDo.append(newToDo)
//        previousToDoVC.tableView.reloadData()
//        navigationController?.popViewController(animated: true)
//
//    }
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
