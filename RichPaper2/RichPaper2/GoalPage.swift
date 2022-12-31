//
//  GoalPage.swift
//  RichPaper2
//
//  Created by 백대홍 on 2022/12/31.
//

import SwiftUI

struct GoalPage: View {
    var body: some View {
        List {
            ForEach(0...9, id: \.self) {
                Text("Happy \($0)")
            }
        }
        .navigationBarTitle("Detail")
    }
}

struct GoalPage_Previews: PreviewProvider {
    static var previews: some View {
        GoalPage()
    }
}
