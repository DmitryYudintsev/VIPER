//
//  TableModulePresenter.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 24.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation
import UIKit

class TableModulePresenter {
    
    weak var view: TableModuleViewInput!
    var cityList: [City]!
    var interactor: TableModuleInteractorInput!
    var router: TableModuleRouterInput!
}

extension TableModulePresenter: TableModuleViewOutput {
    
    func getCity() -> [City] {
        return cityList
    }
    
    func viewIsReady() {
        interactor.requestCityList()
    }
    
    func openAddCity() {
        router.moveToAddCity()
    }
}

extension TableModulePresenter: TableModuleInteractorOutput {
    func moveCityesToPresenter(cityes: [City]) {
       cityList = cityes
       //view.reloadTable()
    }
}

