//
//  TableModuleInteractor.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 24.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation

class TableModuleInteractor {
    weak var output: TableModuleInteractorOutput!
}

extension TableModuleInteractor: TableModuleInteractorInput {
    func requestCityList() {
        self.output?.moveCityesToPresenter(cityes: db)
        print("interactorTable", db)
    }
}
