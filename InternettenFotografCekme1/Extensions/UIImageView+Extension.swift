//
//  UIImageView+Extension.swift
//  InternettenFotografCekme1
//
//  Created by Kürşat Akyürek on 4.08.2023.
//

import UIKit

extension UIImageView{
    func loadImage(url: URL){
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }
            }
        }
    }
}
