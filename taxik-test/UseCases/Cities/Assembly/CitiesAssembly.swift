//
//  CitiesCitiesAssembly.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import UIKit
import Swinject

class CitiesModuleAssembly: ViperModuleAssembly {
    required init() {}

    func assemble(container: Container) {
        // View
        container.registerForStoryboard(CitiesViewController.self) { (r, c) in
            c.output = r.resolve(CitiesModuleInput.self, argument: c) as! CitiesViewOutput
        }
        
        // Presenter
        container.register(CitiesModuleInput.self) { (r, c: CitiesViewController) in
            let presenter =  CitiesPresenter()
            presenter.view = c
            return presenter
        }.initCompleted { (r, p) in
            let p = p as! CitiesPresenter
            p.router = r.resolve(CitiesRouterInput.self, argument: p.view as! TransitionHandler)
            p.interactor = r.resolve(CitiesInteractorInput.self, argument: p as CitiesInteractorOutput)
        }
        
        // Router
        container.register(CitiesRouterInput.self) { (r, v: TransitionHandler) in
            let router = CitiesRouter()
            router.transitionHandler = v
            return router
        }

        // Interactor
        container.register(CitiesInteractorInput.self) { (r, p: CitiesInteractorOutput) in
            let interactor =  CitiesInteractor()
            interactor.output = p
            interactor.cityService = r.resolve(CityServiceType.self)
            return interactor
        }
    }
}

