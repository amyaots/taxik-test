//
//  File.swift
//  AutoAngel-Customer
//
//  Created by Myaots Alexandr on 22.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, TransitionHandler {
    class ConfigurationBlockHolder {
        let block: (ModuleInput) -> Void
        
        init(block: @escaping (ModuleInput) -> Void) {
            self.block = block
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let configurationBlock = sender as? ConfigurationBlockHolder {
            if let destinationController = segue.destination as? UINavigationController {
                if let controller = destinationController.topViewController as? ModuleInputProvider {
                    configurationBlock.block(controller.moduleInput)
                }
            }
            
            if let destinationController = segue.destination as? ModuleInputProvider {
                configurationBlock.block(destinationController.moduleInput)
            }
        }
    }
    
    func openModule(segueIdentifier: String) {
        performSegue(withIdentifier: segueIdentifier, sender: nil)
    }
    
    func openModule(segueIdentifier: String, configurationBlock: @escaping ConfigurationBlock) {
        performSegue(withIdentifier: segueIdentifier, sender: BaseViewController.ConfigurationBlockHolder(block: configurationBlock))
    }
    
    func closeCurrentModule() {
        if let parentViewController = self.parent {
            let isNavigationStack = parentViewController is UINavigationController
            let hasManyControllersInStack = isNavigationStack ? parentViewController.childViewControllers.count > 0 : false
            
            if isNavigationStack && hasManyControllersInStack {
                let navigationController = parentViewController as! UINavigationController
                navigationController.popViewController(animated: true)
            }
        }
    }
    
    func closeStackModulde() {
        navigationController?.popToRootViewController(animated: true)
    }
}


extension BaseViewController : ViewInput {
    func showError(error: String) {
        self.showAlertViewControllerIn(
            withTitle: "ATTENTION"
            , message: error
            , actions: [UIAlertAction(title: "OK", style: .default, handler: nil)])
    }
}
