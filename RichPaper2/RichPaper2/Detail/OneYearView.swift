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
        VStack {
            Text("asdasds")
        }
            .navigationTitle("One Year")
            .navigationBarTitleDisplayMode(.inline)
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
