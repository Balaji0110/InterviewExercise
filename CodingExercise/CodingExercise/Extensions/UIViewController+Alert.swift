//
//  UIViewController+Alert.swift
//  CodingExercise
//
//  Created by Tej on 08/08/19.
//  Copyright © 2019 Tej. All rights reserved.
//

import UIKit
// ShoAlert function 
extension UIViewController {
    func showAlert(title: String = "Warning", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}
