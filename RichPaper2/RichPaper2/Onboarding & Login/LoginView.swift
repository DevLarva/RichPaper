//
//  LoginView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/11.
//

import SwiftUI
import FirebaseAuth
import GoogleSignIn
import Firebase
import GoogleSignInSwift
import KakaoSDKAuth
import KakaoSDKUser
import KakaoSDKAuth
import KakaoSDKUser
struct LoginView: View {

        var action: () -> Void
    var body: some View {
        
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 10) {
                Text("Rich Paper")
                    .font(.title.bold())
                
                Text("Use Rich Paper to find new life goals.")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.top)
                Spacer()
                    .frame(height: 100)

                
                VStack(spacing: 30) {
                    
                    Image("icon")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Spacer()
                        .frame(height: 100)
                    // MARK: - 구글 로그인 버튼
                    GoogleSiginBtn {
                        
                        FirebAuth.share.signinWithGoogle(presenting: getRootViewController()) { error in
                            print("ERROR: \(error)")

                        }
                    }
                    Button(action : {
                               //카카오톡이 깔려있는지 확인하는 함수
                               if (AuthApi.isKakaoTalkLoginAvailable()) {
                                   //카카오톡이 설치되어있다면 카카오톡을 통한 로그인 진행
                                   AuthApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                                       print(oauthToken?.accessToken)
                                       print(error)
                                   }
                               }else{
                                   //카카오톡이 설치되어있지 않다면 사파리를 통한 로그인 진행
                                   AuthApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                                       print(oauthToken?.accessToken)
                                       print(error)
                                   }
                               }
                           }){
                               
                               Text("카카오 로그인")
                           }
                           .onOpenURL(perform: { url in
                                       if (AuthApi.isKakaoTalkLoginUrl(url)) {
                                           _ = AuthController.handleOpenUrl(url: url)
                                       }
                                   })
                    
                    Spacer()
                }
                
            }   .padding()
            Spacer()
            
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(action: {})
    }
}
