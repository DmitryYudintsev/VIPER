//
//  ViewController.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 24.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import UIKit

class TableModuleViewController: UIViewController {
    
    
    var output: TableModuleViewOutput!
    var configurator: MainConfiguratorProtocol = MainConfigurator()
    
    @IBOutlet weak var table: UITableView!
    @IBAction func addCity(_ sender: UIButton) {
        output.openAddCity()
    }
    
    @IBAction func refresh(_ sender: UIButton) {
        output.viewIsReady()
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        setupTable()
        output.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupTable()
        table.reloadData()
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
