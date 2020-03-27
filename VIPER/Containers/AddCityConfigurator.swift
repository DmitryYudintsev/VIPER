//
//  AddCityConfigurator.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 27.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation


protocol AddCityConfiguratorProtocol: class {
    func configure(with viewController: AddCityModuleViewController)
}

class AddCityConfigurator: AddCityConfiguratorProtocol {
    
    func configure(with viewController: AddCityModuleViewController) {
        //let view = TableModuleViewController()
        let interactor = AddCityModuleInteractor()
        let presenter = AddCityModulePresenter()
        let router = AddCityModuleRouter()
        
        viewController.output = presenter
        presenter.interactor = interactor
        //presenter.router = router
    }
}
