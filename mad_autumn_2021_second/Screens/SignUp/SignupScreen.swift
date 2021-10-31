//
//  LoginScreen.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import SwiftUI
import SwiftUIX
import PureSwiftUI

struct SignupScreen: View {
   //@StateObject var vm = SignupScreenModel()
    
    var body: some View {
        Text("test")
        //NavigationView {
//            ZStack {
//                Color.black.ignoresSafeArea()
//                VStack(spacing: 0) {
//                    VStack(spacing: 8) {
//                        TextField("E-mail", text: $vm.email).textFieldStyle(TF.general)
//                        TextField("Password", text: $vm.pass).textFieldStyle(TF.general)
//                        TextField("Repeat Password", text: $vm.passConfirm).textFieldStyle(TF.general)
//                        Spacer()
//                    }
//
//                    Button("Sign up") {
//                        vm.signUp()
//                        //signup = true
//                    }.buttonStyle(BS.general).padding(.bottom, 58)
//    //                NavigationLink("", isActive: $signup, destination: {
//    //                    SignupScreen()
//    //                }).hidden()
//                }.padding(.horizontal, 16).navigationBarTransparent(true)
//
//
//                if vm.isLoading {
//                    ActivityIndicator().animated(true)
//                }
//            }.alert(isPresented: $vm.alert) {
//                Alert(title: "Message!", message: vm.alertText, dismissButtonTitle: "OK")
//            }.navigationTitle("Sign up").navigationBarTransparent(true)
        //}
    }
}

struct SignupScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignupScreen()
    }
}
