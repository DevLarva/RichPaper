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

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var showPassword = false
    var action: () -> Void
    var body: some View {
        
        ZStack {
            Color.white
                .ignoresSafeArea()
            // MARK: - 아이디 및 패스워드 입력란
            VStack(alignment: .center, spacing: 10) {
                Text("Rich Paper")
                    .font(.title.bold())
                
                Text("Use Rich Paper to find new life goals.")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.top)
                Spacer()
                    .frame(height: 100)
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Username",
                              text: $username)
                }
                .padding()
                .background(Capsule().fill(Color.white))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    if showPassword {                       //패스워드 보이게? 안보이게?
                        TextField("Password",
                                  text: $password)
                    } else {
                        SecureField("Password",
                                    text: $password)
                    }
                    Button(action: { self.showPassword.toggle()}) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.secondary)
                    }
                }   .padding()
                    .background(Capsule().fill(Color.white))
                // MARK: - 일반 로그인 버튼
                Button(action: {}) {
                    HStack {
                        Spacer()
                        Text("Login")
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding()
                .background(.black)
                .cornerRadius(12)
                .padding()
                
                Divider()
                
                VStack(spacing: 30) {
                    Text("OR")
                        .font(.subheadline)
                
                // MARK: - 구글 로그인 버튼
                    GoogleSiginBtn {
                        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

                        // Create Google Sign In configuration object.
                        let config = GIDConfiguration(clientID: clientID)

                        // Start the sign in flow!
                        GIDSignIn.sharedInstance.signIn(with: config, presenting: getRootViewController())
                        { user,error in

                          if let error = error {
                            // ...
                            return
                          }

                          guard
                            let authentication = user?.authentication,
                            let idToken = authentication.idToken
                          else {
                            return
                          }

                          let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                                         accessToken: authentication.accessToken)

                          // ...
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
