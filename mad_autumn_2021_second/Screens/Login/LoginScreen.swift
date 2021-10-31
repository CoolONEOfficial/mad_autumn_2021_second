//
//  LoginScreen.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import SwiftUI
import SwiftUIX

struct LoginScreen: View {
    @StateObject var vm = LoginScreenModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack(spacing: 0) {
                    VStack(spacing: 8) {
                        TextField("E-mail", text: $vm.email).textFieldStyle(TF.general)
                        TextField("Password", text: $vm.pass).textFieldStyle(TF.general)
                        Spacer()
                    }
                    
                    Button("Sign in") {
                        vm.login()
                        //signup = true
                    }.buttonStyle(BS.general).padding(.bottom, 58)
    //                NavigationLink("", isActive: $signup, destination: {
    //                    SignupScreen()
    //                }).hidden()
                }.padding(.horizontal, 16).navigationBarTransparent(true)
                    
                
                if vm.isLoading {
                    ActivityIndicator().animated(true)
                }
            }.alert(isPresented: $vm.alert) {
                Alert(title: "Message!", message: vm.alertText, dismissButtonTitle: "OK")
            }.navigationTitle("Sign up").navigationBarTransparent(true)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
