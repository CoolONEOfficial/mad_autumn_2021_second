//
//  StartScreenModel.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import Foundation

class LoginScreenModel: ObservableObject {
    let nw = NetworkService.shared
    
    @Published var email = ""
    @Published var pass = ""
    var alertText = ""
    @Published var alert = false
    @Published var isLoading = false
    
    func login() {
        guard email.contains("."), email.contains("@") else {
            alertText = "INcorrect email"
            alert = true
            return
        }
        guard pass.isNotEmpty else {
            alertText = "Pass is empty"
            alert = true
            return
        }
        
        isLoading = true
        nw.authLogin(email: email, pass: pass) { [self] err in
            isLoading = false
            if let err = err {
                alertText = "Something went wrong!"
                alert = true
            }
        }
    }
}
