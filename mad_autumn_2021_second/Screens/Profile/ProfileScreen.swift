//
//  LoginScreen.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import SwiftUI

struct ProfileScreen: View {
    @StateObject var vm = SignupScreenModel()
    
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 0) {
                VStack {
                    Image("previewText")
                }.maxHeight(.infinity)
                
                Button("Sign up") {
                    //signup = true
                }.buttonStyle(BS.general).padding(.bottom, 58)
//                NavigationLink("", isActive: $signup, destination: {
//                    SignupScreen()
//                }).hidden()
            }.padding(.horizontal, 16).navigationBarTransparent(true)
                .alert(isPresented: $vm.alert) {
                    Alert(title: "Message!", message: vm.alertText, dismissButtonTitle: "OK")
                }
        }.navigationTitle("Sign up").navigationBarTransparent(true)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
