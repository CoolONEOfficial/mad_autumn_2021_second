//
//  ContentView.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        if NetworkService.shared.token?.accessToken != nil, NetworkService.shared.token?.accessTokenExpiredAt.isInFuture == true {
//            Text("app")
//        } else {
            StartScreen()
       // }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
