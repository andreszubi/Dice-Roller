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
                ForEach(1...3, id: \.description) { _ in
                    DiceView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
