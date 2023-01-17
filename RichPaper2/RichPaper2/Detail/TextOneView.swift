//
//  TextOneView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/17.
//

import SwiftUI

struct TextOneView: View {
    @State var first : String = ""
    @State var second : String = ""
    @State var third : String = ""
    
    var body: some View {
        VStack {
            
            
            List {
                Text("이루고 싶은 목표 10개를 적어주세요")
                    .font(.title2)
                    .fontWeight(.bold)
                TextField("첫번째 리스트를 넣어주세요",text: $first)
                TextField("두번째 리스트를 넣어주세요",text: $second)
                TextField("세번째 리스트를 넣어주세요",text: $third)
                
            }
        }
        
        
    }
    
}

struct TextOneView_Previews: PreviewProvider {
    static var previews: some View {
        TextOneView()
    }
}
