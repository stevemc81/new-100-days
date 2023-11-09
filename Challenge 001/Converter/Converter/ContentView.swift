//
//  ContentView.swift
//  Converter
//
//  Created by Steven McWee on 09/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var inputUnit = "Celcius"
    @State private var outputUnit = "Fahrenheit"
    @State private var inputValue = 0.0
    @FocusState private var inputIsFocused: Bool
    
    let unit = ["Celcius", "Fahrenheit", "Kelvin"]
    
    var outputValue: Double {
        var input: Double
        
        // Convert all inputs to Celcius
        switch inputUnit {
        case "Fahrenheit":
            input = ((inputValue - 32) * 5) / 9
        case "Kelvin":
            input = inputValue - 273.15
        default:
            input = inputValue
        }
        
        // Convert input from Celcius to output unit
        switch outputUnit {
        case "Fahrenheit":
            return ((input * 5) / 9) + 32
        case "Kelvin":
            return input + 273.15
        default:
            return input
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Input") {
                    Picker("Unit", selection: $inputUnit) {
                        ForEach(unit, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    TextField("Value", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                }
                
                Section("Output") {
                    Picker("Unit", selection: $outputUnit) {
                        ForEach(unit, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Text(outputValue.formatted())
                }
            }
            .navigationTitle("Converter")
            .toolbar {
                if inputIsFocused {
                    Button("Done") {
                        inputIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
