//
//  Onboarding.swift
//  RichPaper
//
//  Created by 백대홍 on 2022/12/30.
//

import SwiftUI

struct Onboarding: View {
    @Binding var ShowOnboarding: Bool
    let showsDismissButton: Bool
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea(.all)
            
                
            
            
            VStack(alignment: .center) {
                Text("Rich Paper")          //제일 위 제목
                    .font(.largeTitle.bold())
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                
                Spacer()
                VStack(alignment: .leading, spacing: 20) {                   //VStack으로 나열
                    
                    HStack(alignment: .center) {           // 이미지랑 텍스트 같이 나열 1
                        
                        Image(systemName: "pencil.and.outline")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("Take out your paper right now and write down your goals in the time you want!")
                            .font(.headline)
                            .padding([.leading, .trailing, .bottom])
                    }
                    
                    HStack(alignment: .center) {            //2
                        
                        Image(systemName: "calendar")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("Set your own plans for Period and see how you change.")
                            .font(.headline)
                            .padding([.leading, .trailing, .bottom])
                        
                    }
                    HStack(alignment: .center) {                //3
                        
                        Image(systemName: "person.fill.questionmark")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("If you could achieve your desired goal in 24 hours, which one would you choose?")
                            .font(.headline)
                            .padding([.leading, .trailing, .bottom])
                        
                        
                    }
                    
                    HStack(alignment: .center) {                    //4
                        
                        Image(systemName: "figure.run")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title)
                            .accessibility(hidden: true)
                        
                        Text("If you want to find yourself working every day toward your goal, start now.")
                            .font(.headline)
                            .padding([.leading, .trailing, .bottom])
                        
                    }
                    
                } .padding()
                    Spacer()
            
                
                
                if showsDismissButton {
                    // 온보딩이 끝나고 메인 페이지로 넘어가기 위한 버튼
                    // ShowOnboarding 값을 false로 바꾸기 때문에 최초 실행 이후에는 onboardingview를 보여주지 않는다.
                    
                        Button(action: {
                            ShowOnboarding.toggle()
                        }, label: {
                            Text("Get Start")
                                .padding()
                                .foregroundColor(.white)
                                .bold()
                                .cornerRadius(30)
                                .background(Color(.systemBlue))
                                
                        })
                    }
                Spacer()
            }
           
        }
    }
}


