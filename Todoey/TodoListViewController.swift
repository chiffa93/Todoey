//
//  ViewController.swift
//  Todoey
//
//  Created by a.kramerov on 19/04/2019.
//  Copyright © 2019 Alexey Kramerov. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Пнуть Игоряку", "Покурить", "Распределить задачки"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
       // tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark//назначаем аксессуар checkmark для выбранной ячейки. Зачем его же нужно добавлять на сториборде - хз
       
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
         tableView.deselectRow(at: indexPath, animated: true) //убираем выделение с ячейки таблицы после того как её выбрали
    }

}

