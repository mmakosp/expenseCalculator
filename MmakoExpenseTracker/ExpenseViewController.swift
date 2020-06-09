//
//  ViewController.swift
//  MmakoExpenseTracker
//
//  Created by Mmako Sekhosana on 2020/06/07.
//  Copyright © 2020 Mmako Sekhosana. All rights reserved.
//

import UIKit

class ExpenseViewController: UIViewController {
    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    var expenseList = ["Airtime", "Rent", "Books", "Travel"]
    
    override func loadView() {
      super.loadView()
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
      setupTableView()
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
    }
    
    // MARK: - SETUP Table view
    func setupTableView() {
      view.addSubview(tableView)
      tableView.translatesAutoresizingMaskIntoConstraints = false
      tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
      tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
      tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
      tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

// MARK: - DATASOURCE
extension ExpenseViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenseList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        let expenseName = expenseList[indexPath.row]
        cell.textLabel?.text = expenseName
        return cell
    }
}
