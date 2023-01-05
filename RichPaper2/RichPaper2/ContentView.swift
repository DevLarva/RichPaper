//
//  ContentView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2022/12/31.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    var period = ["One Month", "Six Month ", "A Year"]

    var body: some View {
      
        NavigationView {
        
            
            VStack(spacing: 20) {
                Image("plan")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100.0, height: 100.0)
                    .padding()
                Text("Please set a period of time when you want to set a goal")
                    .bold()
                    .font(.title2)
                    .padding()
                
                NavigationLink {
                    OneMonthView()
                        } label: {
                            Text("1 month")
                        }
                        .buttonStyle(.borderedProminent)
                
                NavigationLink {
                    SixMonthView()
                        } label: {
                            Text("6 month")
                        }
                        .buttonStyle(.borderedProminent)
                NavigationLink {
                    OneYearView()
                        } label: {
                            Text("12 month")
                        }
                        .buttonStyle(.borderedProminent)
            }
            
            .navigationBarTitle("Goal Setting Period")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
