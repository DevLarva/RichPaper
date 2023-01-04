//
//  ContentView.swift
//  RichPaper
//
//  Created by 백대홍 on 2022/12/30.
//

import SwiftUI

struct ContentView: View {
    @State var ShowOnboarding: Bool = true
    @AppStorage("_Firstrun") var Firstrun: Bool = true
    var body: some View {
        VStack {
            Onboarding(ShowOnboarding: $Firstrun, showsDismissButton: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
