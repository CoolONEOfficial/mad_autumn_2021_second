//
//  StartScreenModel.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import Foundation

class SignupScreenModel: ObservableObject {
    let nw = NetworkService.shared
    
    @Published var email = ""
    @Published var pass = ""
    @Published var passConfirm = ""
    var alertText = ""
    @Published var alert = false
    @Published var isLoading = false
    
    func signUp() {
        guard email.contains("."), email.contains("@") else {
            alertText = "INcorrect email"
            alert = true
            return
        }
        guard pass == passConfirm else {
            alertText = "Passes not match"
            alert = true
            return
        }
        guard pass.isNotEmpty else {
            alertText = "Passes is empty"
            alert = true
            return
        }
        
        isLoading = true
        nw.authSignup(email: email, pass: pass) { [self] err in
            isLoading = false
            if let err = err {
                alertText = "Something went wrong!"
                alert = true
            }
        }
    }
}
