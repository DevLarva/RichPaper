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
        NavigationView {
            VStack {
                Text("Please select a goal setting period and press the button below.")
                    .bold()
                    .font(.title3)
                    .padding()
                
                Picker("", selection: $selectedPeriod) {
                    
                    ForEach(period, id: \.self) {
                        Text($0)
                        
                    }
                }
                .pickerStyle(.segmented)
                .background(.secondary)
                .cornerRadius(10)
                .padding()
                
                Text("you selected \(selectedPeriod)")
                
            }
            .navigationBarTitle("Goal Setting Period")
        }
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
