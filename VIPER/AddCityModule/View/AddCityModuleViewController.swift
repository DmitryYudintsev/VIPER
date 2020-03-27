//
//  AddCityModuleViewController.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 26.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import UIKit

class AddCityModuleViewController: UIViewController {
    
    @IBOutlet weak var addCityTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
    }
    
    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 44))
        let navItem = UINavigationItem(title: "AddCity")
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: #selector(done))
        navItem.rightBarButtonItem = doneItem
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }

    @objc func done() {
    }
    
}
