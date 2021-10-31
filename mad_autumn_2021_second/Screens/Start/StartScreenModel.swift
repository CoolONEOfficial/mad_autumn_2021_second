//
//  StartScreenModel.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import Foundation

class StartScreenModel: ObservableObject {
    let nw = NetworkService.shared
    var alertText = ""
    @Published var alert = false
    var isLoading = false
    
    func checkToken() {
        if nw.token?.accessTokenExpiredAt.isInPast == true, let refresh = nw.token?.refreshToken, nw.token?.refreshTokenExpiredAt.isInFuture == true {
            isLoading = true
            
            nw.refreshToken { [self] err in
                isLoading = false
                if let err = err {
                    alertText = "Refresh went wrong!"
                    alert = true
                }
            }
        }
    }
}
