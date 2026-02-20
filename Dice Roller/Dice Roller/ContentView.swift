//
//  ContentView.swift
//  Dice Roller
//
//  Created by Andres Zubizarreta on 2/20/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.monospaced())
                .bold()
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 6)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
