//
//  MainConfigurator.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 24.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation

protocol MainConfiguratorProtocol: class {
    func configure(with viewController: TableModuleViewController)
}

class MainConfigurator: MainConfiguratorProtocol {
    
    func configure(with viewController: TableModuleViewController) {
        let interactor = TableModuleInteractor()
        let presenter = TableModulePresenter()
        let router = TableModuleRouter()
        
        viewController.output = presenter
        presenter.interactor = interactor
        interactor.output = presenter
        presenter.router = router
    }
}
