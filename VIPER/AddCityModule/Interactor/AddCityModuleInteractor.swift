//
//  AddCityModuleInteractor.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 27.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation

class AddCityModuleInteractor {
    
}

extension AddCityModuleInteractor: AddCityModuleInteractorInput {
    
    func refreshCityList(cityName: String) {
        db.append(City(name: cityName))
        print("addCityInteractor", db)
    }
}
