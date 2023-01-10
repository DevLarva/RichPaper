//
//  SelectPeriodView.swift
//  RichPaper2
//
//  Created by 백대홍 on 2023/01/08.
//

import SwiftUI

struct SelectPeriodView: View {
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

struct SelectPeriodView_Previews: PreviewProvider {
    static var previews: some View {
        SelectPeriodView()
    }
}
