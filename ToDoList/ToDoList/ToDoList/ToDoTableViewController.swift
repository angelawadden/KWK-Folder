//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Angela Wadden on 7/19/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoCD] = []
    
    func getToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let dataFromCoreData = try?
                accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                listOfToDo = dataFromCoreData
                tableView.reloadData()
            }
        }
    }
    
    /*
    func createToDo() -> [ToDoClass] {
        let swiftToDo = ToDoClass()
        swiftToDo.description = "learn swift"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass()
        dogToDo.description = "finish my painting"
        //important is set to false by default
        
        let tennisToDo = ToDoClass()
        tennisToDo.description = "practice tennis"
        
        let studyToDo = ToDoClass()
        studyToDo.description = "study for the sat"
        studyToDo.important = true
        
        return [swiftToDo, dogToDo, tennisToDo, studyToDo]
    } */
    
    override func viewDidLoad() {
        super.viewDidLoad()

      //listOfToDo = createToDo()
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listOfToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo [indexPath.row]
        
        if let thereIsDescription = eachToDo.descriptionInCD{
        if eachToDo.importantInCD {
            cell.textLabel?.text = "❗️" + thereIsDescription
        } else {
            cell.textLabel?.text = eachToDo.descriptionInCD
        }
        }
        // Configure the cell...
            
        return cell
        
    }
    
    override func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //this gives us a single ToDo
        let eachToDo = listOfToDo[indexPath.row]
        
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }
  
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
  

  


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextAddToDoVC = segue.destination as?  AddToDoViewController {
            nextAddToDoVC.previousToDoTVC = self
        }
        
        if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
            if let chosenToDo = sender as? ToDoCD {
                nextCompletedToDoVC.selectedToDo = chosenToDo
                nextCompletedToDoVC.previousToDoTVC = self
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
