//
//  StartScreen.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import SwiftUI
import SwiftUIX
import PureSwiftUI

struct StartScreen: View {
    
    @StateObject var vm = StartScreenModel()
    
    @State var signup = false
    @State var login = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack(spacing: 0) {
//                    ZStack {
//                        Image("previewText") // TODO: anims
//                    }.maxHeight(.infinity)
//
//                    Button("Sign up") {
//                        signup = true
//                    }.buttonStyle(BS.general).padding(.bottom, 24)
//                    Button("Already have an account?") {
//                        login = true
//                    }.buttonStyle(BS.dark).padding(.bottom, 8)
//                    Button("Sign In") {
//                        login = true
//                    }.buttonStyle(BS.underlined).padding(.bottom, 37)
                    NavigationLink("TEST", isActive: $signup, destination: {
                        SignupScreen()
                    })//.hidden()
//                    NavigationLink("", isActive: $login, destination: {
//                        LoginScreen()
//                    }).hidden()
                }//.ignoresSafeArea(SafeAreaRegions.all, edges: .top).padding(.horizontal, 16).navigationBarTransparent(true)
                
//                if vm.isLoading {
//                    ActivityIndicator().animated(true)
//                }
            }
//            .alert(isPresented: $vm.alert) {
//                Alert(title: "Message!", message: vm.alertText, dismissButtonTitle: "OK")
//            }
        }//.onAppear { vm.checkToken() }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
