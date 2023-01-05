//
//  SixMonthView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/05.
//

import SwiftUI

struct SixMonthView: View {
    @State private var showingAddScreen = false
    var body: some View {
        List {
            ForEach(0...9, id: \.self) {
                Text("Happy \($0)")
            }
        }
        .navigationBarTitle("Six month")
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

struct SixMonthView_Previews: PreviewProvider {
    static var previews: some View {
        SixMonthView()
    }
}
