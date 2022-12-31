//
//  ContentView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2022/12/31.
//

import SwiftUI

struct ContentView: View {
    var period = ["One Month", "Six Month ", "One Year"]
    @State var selectedPeriod = ""
    
    var body: some View {
        VStack {
            Text("Please select a goal setting period")
            
                .font(.title2)
             
            Picker("Please select a goal setting period", selection: $selectedPeriod) {
                
                ForEach(period, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .background(.gray)
            .cornerRadius(10)
            .padding()
            Text("You selected: \(selectedPeriod)")
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
