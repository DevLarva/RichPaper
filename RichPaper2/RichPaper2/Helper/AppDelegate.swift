//
//  AppDelegate.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/11.
//

import UIKit
import Firebase
import GoogleSignIn
import KakaoSDKCommon
import KakaoSDKAuth

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Initializetion code for firebase
        FirebaseApp.configure()
        KakaoSDK.initSDK(appKey: "NATIVE_APP_KEY")
        return true
    }
    
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any])
    -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
        
        if (AuthApi.isKakaoTalkLoginUrl(url)) {
                       return AuthController.handleOpenUrl(url: url, options: options)
                   }
                   return false
    }
}
