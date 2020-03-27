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
    
    func mainViewController() -> UIViewController {
    var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
        while (topController.presentedViewController != nil) {
            topController = topController.presentedViewController!
        }
        return topController
    }
    
}

extension TableModuleRouter: TableModuleRouterInput {
    func moveToAddCity() {
        let topVC = mainViewController()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addVC = sb.instantiateViewController(withIdentifier: "id2")
        topVC.present(addVC, animated: true, completion: nil)
    }
}
