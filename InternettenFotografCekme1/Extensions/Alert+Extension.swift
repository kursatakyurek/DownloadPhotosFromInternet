//
//  Alert+Extension.swift
//  InternettenFotografCekme1
//
//  Created by Kürşat Akyürek on 4.08.2023.
//

import UIKit

extension ViewController{
    func alertMessage(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Tamam", style: .cancel)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
