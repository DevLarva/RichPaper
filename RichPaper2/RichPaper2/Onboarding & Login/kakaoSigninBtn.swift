//
//  kakaoSigninBtn.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/16.
//

import SwiftUI

struct kakaoSigninBtn: View {
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
       
    var body: some View {
        VStack(spacing: 20) {
            
            Button("카카오 로그인", action:  {
                kakaoAuthVM.handlekakaoLogin()
            })
            Button("카카오 로그아웃", action: {
                kakaoAuthVM.handlekakaoLogout()
            })
        }
            
    }
}

struct kakaoSigninBtn_Previews: PreviewProvider {
    static var previews: some View {
        kakaoSigninBtn()
    }
}
