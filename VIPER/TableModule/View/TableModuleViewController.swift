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
    var configurator: MainConfiguratorProtocol = MainConfigurator()
    @IBAction func addCity(_sender: UIButton) {
        output.openAddCity()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        setupTable()
        output.viewIsReady()
    }
    
    func setupTable() {
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension TableModuleViewController: TableModuleViewInput {
   func reloadTable() {
        table.reloadData()
    }
}

extension TableModuleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.getCity().count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cities = output.getCity()
        cell.textLabel?.text = cities[indexPath.row].name
        return cell
    }
}
