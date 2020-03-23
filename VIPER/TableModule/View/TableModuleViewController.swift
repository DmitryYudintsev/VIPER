//
//  ViewController.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 24.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import UIKit

class TableModuleViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    var output: TableModuleViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension TableModuleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return db.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = db[indexPath.row].name
        return cell
    }
    
    
}
