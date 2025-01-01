//
//  ViewController.swift
//  WordList
//
//  Created by Kateryna on 01/01/2025.
//

import UIKit

class WordListViewController: UIViewController {
    let words = ["apple", "banana", "melon"]
    var tableView: UITableView?
    

//MARK: - UIViewController Lifecycle Methods
    
    override func loadView() {
        let mainView = UIView()
        self.view = mainView
        
        let table = UITableView()
        mainView.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false

        self.tableView = table
        
        NSLayoutConstraint.activate([
            table.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor),
            table.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            table.bottomAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }
}

//MARK: - Datasourse and Delegate Methods

extension WordListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = words[indexPath.row]
        return cell
    }
}
