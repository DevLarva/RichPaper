//
//  OneMonthView.swift
//  dd
//
//  Created by 백대홍 on 2023/01/04.
//

import SwiftUI

struct OneMonthView: View {
    @State private var showingAddScreen = false
    
    
    var body: some View {
        VStack {
            Text("asdasds")
        }
            .navigationTitle("One month")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
               ToolbarItem(placement: .navigationBarTrailing) {
                   Button {
                       showingAddScreen.toggle()
                       
                   } label: {
                       Label("Add Word", systemImage: "plus")
                   }.sheet(isPresented: self.$showingAddScreen)
                   {
                       OneMonthView()
                   }
               }
           }
         }
       }
struct OneMonthView_Previews: PreviewProvider {
    static var previews: some View {
        OneMonthView()
    }
}
