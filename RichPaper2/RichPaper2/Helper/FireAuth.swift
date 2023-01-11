//
//  FireAuth.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/12.
//
// MARK: - 굉장히 힘들었던 부분이 이쪽으로 넘어옴!
import Foundation
import FirebaseAuth
import GoogleSignIn
import Firebase

struct FirebAuth {
    static let share = FirebAuth()
    
    private init() {}
    
    func signinWithGoogle(presenting: UIViewController,
                          completion: @escaping (Error?) -> Void) {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        // Start the sign in flow! 특히 이부분! googleSignIn version 6.2.3으로 바꾸고 에러 해결 완료
        GIDSignIn.sharedInstance.signIn(with: config, presenting: presenting) {user, error in

          if let error = error {
              completion(error)
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

            Auth.auth().signIn(with: credential) { result, error in
                guard error == nil else {
                    completion(error)
                    return
                }
                print("SIGN IN")
                UserDefaults.standard.set(true, forKey: "signIn") // When this change to true, it will go to the home screen
            }
        }
    }
}
