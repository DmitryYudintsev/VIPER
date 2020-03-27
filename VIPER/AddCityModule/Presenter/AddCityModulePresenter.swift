//
//  AddCityModulePresenter.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 27.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation


class AddCityModulePresenter {
    weak var view: AddCityModuleViewInput!
    var cityList: [City]!
    var interactor: AddCityModuleInteractorInput!
    var router: AddCityModuleRouterInput!
}

extension AddCityModulePresenter: AddCityModuleViewOutput {
    func saveCity(cityName: String) {
        interactor.refreshCityList(cityName: cityName)
    }
    
    func viewIsReady() {
        //interactor.requestCityList()
    }

}
