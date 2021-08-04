//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Saige Forbes on 8/2/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoCD] = []
    
    func getToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest() as? [ToDoCD])
            {
                listOfToDo = dataFromCoreData
                tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        listOfToDo = createToDo()
    }
    
//    func createToDo() -> [ToDoClass]{
//        let swiftToDo = ToDoClass()
//       swiftToDo.description = "Learn Swift"
//        swiftToDo.important = true
//
//        let dogToDo = ToDoClass()
//        dogToDo.description = "Walk the Dog"
//
//        return[swiftToDo, dogToDo]
//    }
//
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo[indexPath.row]
        
        
        if let thereIsDescription = eachToDo.decriptionInCD {
            if eachToDo.importantInCD {
                cell.textLabel?.text = "‼️" + thereIsDescription
            } else {
                cell.textLabel?.text = thereIsDescription
            }
        }

        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
    
    override func tableView(_ tabelView: UITableView, didSelectRowAt indexPath: IndexPath){
        let eachToDo = listOfToDo[indexPath.row]
        
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoViewController = segue.destination as? AddToViewController{
            nextAddToDoViewController.previousToDoVC = self
    }
        if let nextCompletedAddToDoVc = segue.destination as? CompletedToDoViewController{
            if let choosenToDo = sender as? ToDoClass{
                nextCompletedAddToDoVc.selectedToDo = choosenToDo
                nextCompletedAddToDoVc.previousToDo = self
            }
        }
    }

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextAddToDoVc = segue.destination as? AddToViewController{
            nextAddToDoVc.previousToDoVC = self
        }
        
        if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
            if let choosenToDo = sender as? ToDoCD {
                nextCompletedToDoVC.selectedToDo = choosenToDo
                nextCompletedToDoVC.previousToDoTVC = self
            }
        }
    }
    
}
