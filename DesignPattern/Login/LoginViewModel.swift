//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by maged on 13/03/2024.
//

import Foundation

protocol LoginViewDelegate {
    func loginSuccess()
    func loginFailure()
}

class LoginViewModel {
    
    var delegate: LoginViewDelegate?
    let networkService = NetworkService.shared
    
    func login(email: String, password: String) {
        networkService.loginIn(email: email, password: password) { [weak self] loginSuccess, user in
            guard let self = self else { return }
            if loginSuccess {
                self.delegate?.loginSuccess()
            }else {
                self.delegate?.loginFailure()
            }
        }
    }
}
