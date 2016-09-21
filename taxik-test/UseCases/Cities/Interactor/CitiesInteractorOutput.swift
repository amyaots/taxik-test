//
//  CitiesCitiesInteractorOutput.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import Foundation

protocol CitiesInteractorOutput: class {
    
    func received(cities: [City])
    
    func encounteredError(error: Error)

}
