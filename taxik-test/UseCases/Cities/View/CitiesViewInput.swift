//
//  CitiesCitiesViewInput.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

protocol CitiesViewInput: class, ViewInput {
    
    func display(cities: [City])
}
