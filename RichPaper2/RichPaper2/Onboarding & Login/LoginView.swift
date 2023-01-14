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
