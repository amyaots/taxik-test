//
//  CitiesCitiesRouter.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

class CitiesRouter: CitiesRouterInput {
	weak var transitionHandler: TransitionHandler!
    
    func openMap(city: City) {
        transitionHandler.openModule(segueIdentifier: "map") { module in
            guard let mapModule = module as? MapModuleInput else {
                fatalError()
            }
            mapModule.set(city: city)
        }
    }
}
