//
//  OneYearView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/05.
//

import SwiftUI

struct OneYearView: View {
    @State private var showingAddScreen = false
    var body: some View {
        List {
            ForEach(0...9, id: \.self) {
                Text("Happy \($0)")
            }
        }
        .navigationBarTitle("12 Month")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showingAddScreen.toggle()
                    
                } label: {
                    Label("Add Word", systemImage: "plus")
                }
            }
        }
    }
}
struct OneYearView_Previews: PreviewProvider {
    static var previews: some View {
        OneYearView()
    }
}
