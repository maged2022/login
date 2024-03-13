//
//  NetworkService.swift
//  DesignPattern
//
//  Created by maged on 09/03/2024.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService() // singleton
    private init () {}
    
    private var user: User?
    
    func loginIn(email: String, password: String,  completion: @escaping (Bool,User?) -> () ) {
        DispatchQueue.global().async {
            sleep(3)
            DispatchQueue.main.async {
                if email == "test@test.com" && password == "test1234" {
                    let user = User(name: "maged", age: 30, job: "developper", email: email, maritalStatus: .engaged, location: Location(lon: 1.2345, lat: 2.0215))
                    self.user = user
                    completion(true,user)
                }else {
                    completion(false, nil)
                    self.user = nil
                }
            }
        }
    }
    
    func getUserData() -> User? {
        return user
    }
}
