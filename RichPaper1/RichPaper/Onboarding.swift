//
//  Onboarding.swift
//  RichPaper
//
//  Created by 백대홍 on 2022/12/30.
//

import SwiftUI

struct Onboarding: View {
    @Binding var ShowOnboarding: Bool
    var body: some View {
        
        
        TabView {
            PageView(title: String(localized:"Are you good at planning for success?",comment: ""),
                     subtitle: String(localized: "Don't you fail to plan every time?",comment: ""),
                     imageName: "plan",
                     showsDismissButton: false,
                     ShowOnboarding: $ShowOnboarding
            )
            
            PageView(title: String(localized:"Brian Tracy's",comment: ""),
                      subtitle: String(localized:"This app is Brian Tracy's suggestion to achieve his goal.",comment: ""),
                     imageName: "anounce",
                     showsDismissButton: false,
                     ShowOnboarding: $ShowOnboarding
                     
            )
            
            PageView(title: String(localized:"Set your own goals and achieve them!",comment: ""),
                     subtitle:  String(localized:"Looking forward to seeing yourself change in a month, six months, or a year!",comment: ""),
                     imageName: "succes",
                     showsDismissButton: true,
                     ShowOnboarding: $ShowOnboarding
                     
            )
            
            
            
            
        }
        .tabViewStyle(.page)
    }
}
