//
//  GoogleSiginBtn.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/11.
//

import SwiftUI

struct GoogleSiginBtn: View {
    var action: () -> Void
        
        var body: some View {
            Button {
                action()
            } label: {
                
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Image("icon-google").renderingMode(.template)
                            .foregroundColor(.black)
                          
                                   Spacer()
                        Image("google")
                            .resizable()
                            .frame(width: 30, height: 30)
                            
                        
                                   Text("Sign in with Google")
                            .foregroundColor(.blue).bold()
                                   Spacer()
                    }
                }
                       }
                       .padding()
                       .cornerRadius(16)
                       .background(Color.white)
                       .shadow(color: Color.init(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 8, x: 0, y: 4)
                       .frame(width: 300, height: 58)
        }
    }

    struct GoogleSiginBtn_Previews: PreviewProvider {
        static var previews: some View {
            GoogleSiginBtn(action: {})
        }
    }
