//
//  CitiesCitiesViewOutput.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

protocol CitiesViewOutput {

    /**
        @author Aleksandr Myaots
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func open(city: City)
}
