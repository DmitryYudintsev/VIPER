//
//  AddCityModuleProtocols.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 27.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation

protocol AddCityModuleViewOutput {
    func saveCity(cityName: String)
    func viewIsReady()
}

protocol AddCityModuleViewInput: class {
    func reloadTable()
}
