//
//  NetworkService.swift
//  mad_autumn_2021
//
//  Created by Nickolay Truhin on 31.10.2021.
//

import Foundation
import Alamofire
import SwiftDate

class NetworkService {
    static var shared: NetworkService = .init()
    
    init() {}
    
    var token: LoginResp?
    
    var baseUrl = "http://193.38.50.175/scare-me/api/mobile"
    
//    struct LoginParams: Encodable {
//        let email: String
//        let password: String
//    }
    
    struct LoginResp: Decodable {
        let accessToken: String
        let accessTokenExpiredAt: DateInRegion
        let refreshToken: String
        let refreshTokenExpiredAt: DateInRegion
        
//        var refreshTokenExpiredAtDate: Date {
//            refreshTokenExpiredAt.toDate()
//        }
    }
    
    func authLogin(email: String, pass: String, completion: @escaping (Error?) -> Void) {
        AF.request(baseUrl + "/v1/auth/login", method: .post, parameters: [ "email": email, "password": pass ] as Parameters, encoding: JSONEncoding.default).responseDecodable(of: LoginResp.self) { resp in
            switch resp.result {
            case let .success(res):
                self.token = res
                completion(nil)
                
            case let .failure(err):
                completion(err)
            }
        }
    }
    
    func authSignup(email: String, pass: String, completion: @escaping (Error?) -> Void) {
        AF.request(baseUrl + "/v1/auth/register", method: .post, parameters: [ "email": email, "password": pass ] as Parameters, encoding: JSONEncoding.default).responseDecodable(of: LoginResp.self) { resp in
            switch resp.result {
            case let .success(res):
                self.token = res
                completion(nil)
                
            case let .failure(err):
                completion(err)
            }
        }
    }

    func refreshToken(completion: @escaping (Error?) -> Void) {
        AF.request(baseUrl + "/v1/auth/refresh", method: .post, parameters: [ "refreshToken": token?.refreshToken ] as Parameters, encoding: JSONEncoding.default).responseDecodable(of: LoginResp.self) { resp in
            switch resp.result {
            case let .success(res):
                self.token = res
                completion(nil)
                
            case let .failure(err):
                completion(err)
            }
        }
    }
}
