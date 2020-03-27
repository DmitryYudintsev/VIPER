//
//  TableModuleRouter.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 26.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation
import UIKit

class TableModuleRouter {    
}

extension TableModuleRouter: TableModuleRouterInput {
    func moveToAddCity() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let tableVC = sb.instantiateViewController(withIdentifier: "id1")
        var addVC = sb.instantiateViewController(withIdentifier: "id2")
        addVC = AddCityModuleViewController()
        //tableVC.navigationController?.pushViewController(addVC, animated: true)
        //let appDelegate = UIApplication.shared.delegate as! SceneDelegate
        //appDelegate.window?.rootViewController = addVC
        tableVC.present(addVC, animated: true, completion: nil)
    }
}
