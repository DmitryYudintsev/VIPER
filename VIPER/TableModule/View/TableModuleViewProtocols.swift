//
//  TableModuleViewOutput.swift
//  VIPER
//
//  Created by Дмитрий Юдинцев on 24.03.2020.
//  Copyright © 2020 Дмитрий Юдинцев. All rights reserved.
//

import Foundation

protocol TableModuleViewOutput {
    func addCity()
    func getCityCount() -> [City]
}

protocol TableModuleViewInput {
}
