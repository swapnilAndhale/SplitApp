//
//  ContentView.swift
//  Starter
//
//  Created by Swapnil on 05/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkValue = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 30]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Selcet Value", value: $checkValue, format: .currency(code: "INR"))
                        .keyboardType(.decimalPad)
                    
                    Section {
                        
                        TextField("Number of people", value: $numberOfPeople, format: .number)
                            .keyboardType(.numberPad)
                        
                        Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(2..<10) {
                                Text("\($0) People")
                            }
                        }
                        .pickerStyle(.automatic)
                    } header: {
                        Text("How many number of peoples you want?")
                    }
                }
            }
            .navigationTitle("SwiftUI Picker")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
