//
//  ViewController.swift
//  InternettenFotografCekme1
//
//  Created by Kürşat Akyürek on 4.08.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var url = URL(string: "https://cdn.hosting.com.tr/bilgi-bankasi/wp-content/uploads/2023/03/http-404-not-found-error-dosya-bulunamadi-mesaji.jpg")
    
    
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var webImage: UIImageView!
    @IBOutlet weak var tapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapped(_ sender: UIButton) {

        if urlTextField.text != ""{
            url = URL(string: urlTextField.text!)
        }else{
            alertMessage(title: "Uyarı !", message: "Lütfen Geçerli Bir URL giriniz")
        }
        
        webImage.loadImage(url: url!)

    }
    
    
}

