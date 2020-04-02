//
//  ViewController.swift
//  ExampleOAuth
//
//  Created by Jeferson Nazario on 18/03/20.
//  Copyright © 2020 jnazario.com. All rights reserved.
//

import UIKit
import CieloOAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var txtLoading: UILabel!
    @IBOutlet weak var txtResult: UILabel!
    @IBOutlet weak var btnAuthenticate: UIButton!
    @IBOutlet weak var txtClientId: UITextField!
    @IBOutlet weak var txtClientSecret: UITextField!

    var credentialClient: CredentialsClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        
        loading.hidesWhenStopped = true
        txtLoading.text = ""
        txtResult.text = ""
        
        txtClientId.text = "df66638b-3ef4-421f-a18e-e20dea38d97d"
        txtClientSecret.text = "q13XZ48haFg4EhAS2cjcoyX7OzRECYysY6T9TJLmKNM="
        
        btnAuthenticate.addTarget(self, action: #selector(setupCredentials), for: .touchUpInside)
    }
    
    @objc func setupCredentials() {
        loading.startAnimating()
        txtLoading.text = "Autenticando ..."
        
        guard let clientId = txtClientId.text else {
            return
        }
        
        guard let clientSecret = txtClientSecret.text else {
            return
        }
        
        credentialClient = HttpCredentialsClient(clientId: clientId,
                                                 clientSecret: clientSecret,
                                                 environment: .sandbox)
        
        credentialClient.getOAuthCredentials { [weak self] (accessToken, error) in
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                self.loading.stopAnimating()
                self.txtLoading.text = "Resultado"
                
                guard error == nil else {
                    self.txtResult.text = "Erro: \(error ?? "N/A")"
                    return
                }
                
                guard let accessToken = accessToken else {
                    self.txtResult.text = "Não foi possível gerar o access token."
                    return
                }
                
                self.txtResult.text = "Token: \(accessToken.token)"
            }
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
