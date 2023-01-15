//
//  RichPaper2App.swift
//  RichPaper2
//
//  Created by 백대홍 on 2022/12/31.
//

import SwiftUI
import Firebase
import GoogleSignIn
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct RichPaper2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    init() {
        let kakakoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
          // Kakao SDK 초기화
          KakaoSDK.initSDK(appKey: kakakoAppKey as! String )
      }
    
    
    @AppStorage("signIn") var isSignIn = false
    var body: some Scene {
        WindowGroup {
            if !isSignIn {
                LoginView(action: {})
            }
            else {
                SelectPeriodView()
            }
            LoginView(action: {}).onOpenURL(perform: { url in
                if (AuthApi.isKakaoTalkLoginUrl(url)) {
                    _ = AuthController.handleOpenUrl(url: url)
                }
            })
        }
    }
}


