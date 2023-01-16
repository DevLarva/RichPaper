//
//  KakaoAuthVM.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/16.
//

import Foundation
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM : ObservableObject {
    
    func handlekakaoLogout() {
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
            }
            else {
                print("logout() success.")
            }
        }
    }
    
    
    func handlekakaoLogin() {
        //카카오톡 설치 여부 확인 - 설치 되어있을때
        if (UserApi.isKakaoTalkLoginAvailable()) {
            //카카오 앱을 통해 로그인
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    
                    //do something
                    _ = oauthToken
                }
            }
            
        } else { //설치 안되어있을때
            //웹뷰를 열어서 로그인
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                    }
                }
        }
    }
    
}
