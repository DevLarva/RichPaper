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
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea(.all)
            VStack {
                Text("Rich Paper")
                    .font(.largeTitle.bold())
                    .foregroundColor(.black)
                VStack(spacing: 30) {
                    HStack(alignment: .center) {
                        
                        Image(systemName: "music.mic")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("Take out your paper right now and write down your goals in the time you want!")
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    
                    HStack(alignment: .center) {
                        
                        Image(systemName: "calendar")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("Set your own plans for a month, six months, or a year, and find yourself changing.")
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                        
                    }
                    HStack(alignment: .center) {
                        
                        Image(systemName: "calendar")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("If you could achieve your desired goal in 24 hours, which one would you choose?")
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                        
                    }
                    HStack(alignment: .center) {
                        
                        Image(systemName: "calendar")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("If you want to find yourself working every day toward your goal, start now.")
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                        
                    }
                
                }
                
            }
        }
   
    }
}

