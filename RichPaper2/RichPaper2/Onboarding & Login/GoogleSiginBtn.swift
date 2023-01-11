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
                ZStack{
                    Circle()
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                    
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                        .mask(
                            Circle()
                        )
                }
                
            }
            .frame(width: 50, height: 50)
        }
    }

    struct GoogleSiginBtn_Previews: PreviewProvider {
        static var previews: some View {
            GoogleSiginBtn(action: {})
        }
    }
