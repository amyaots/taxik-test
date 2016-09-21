//
//  UIViewController+showAlertView.swift
//  AutoAngel-Customer
//
//  Created by Myaots Alexandr on 22.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlertViewControllerIn(withTitle title:String, message: String, actions: [UIAlertAction]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for action in actions {
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
}
