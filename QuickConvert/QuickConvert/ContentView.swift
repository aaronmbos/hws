//
//  ContentView.swift
//  QuickConvert
//
//  Created by Aaron Bos on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var amount: Double = 0.0
    @State var selectedInputUnit = "Milliseconds"
    @State var selectedOutputUnit = "Milliseconds"
    private let timeUnits = ["Milliseconds", "Seconds", "Minutes", "Hours"]
    private var convertedAmount: Double {
        var inputMs = 0.0
        
        if selectedInputUnit == "Milliseconds" {
            inputMs = amount
        } else if selectedInputUnit == "Seconds" {
            inputMs = Double(amount * 1000)
        } else if selectedInputUnit == "Minutes" {
            inputMs = Double(amount * 1000 * 60)
        } else if selectedInputUnit == "Hours" {
            inputMs = Double(amount * 1000 * 60 * 60)
        }
        
        if selectedOutputUnit == "Milliseconds" {
            return inputMs
        } else if selectedOutputUnit == "Seconds" {
            return inputMs / 1000
        } else if selectedOutputUnit == "Minutes" {
            return inputMs / 1000 / 60
        } else if selectedOutputUnit == "Hours" {
            return inputMs / 1000 / 60 / 60
        } else {
            return 0.0
        }
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Enter amount") {
                    TextField("Amount", value: $amount, format: .number)
                }
                
                Section("Select input unit") {
                    Picker("Time units", selection: $selectedInputUnit) {
                        ForEach(timeUnits, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("Select output unit") {
                    Picker("Time units", selection: $selectedOutputUnit) {
                        ForEach(timeUnits, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("Converted amount") {
                    Text("\(convertedAmount.formatted()) \(selectedOutputUnit)")
                }
            }
            .navigationTitle("Quick Convert")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
