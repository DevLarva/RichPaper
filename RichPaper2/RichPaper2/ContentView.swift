//
//  ContentView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2022/12/31.
//

import SwiftUI
import FirebaseAuth
import GoogleSignIn
import Firebase
struct ContentView: View {
    @State var showDetails = false
    @AppStorage("_isFirstLaunching") var Firstrun: Bool = true
    
    var body: some View {
        LoginView(action: {})
            .fullScreenCover(isPresented: $Firstrun) {
                Onboarding(ShowOnboarding: $Firstrun, showsDismissButton: true)
                    .onAppear {
                        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
                        }
                    }
            }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
