//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Steven McWee on 20/11/2023.
//

import SwiftUI

struct ContentView: View {
    let moves = ["🪨", "📃", "✂️"]
    
    @State private var move = Int.random(in: 0...2)
    @State private var outcome = Bool.random()
    @State private var score = 0
    @State private var questionsAsked = 0
    @State private var endOfGame = false
    @State private var showingScore = false
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [.blue, .mint], center: .center, startRadius: 0, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Text("Rock, Paper, Scissors!")
                    .font(.largeTitle.bold())
                
                Spacer()
                
                Text("Computer picks...")
                    .font(.title)
                Text("\(moves[move])")
                    .font(.system(size: 200))
                Text("And wants you to...")
                    .font(.title)
                Text(outcome ? "WIN!" : "LOSE!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                
                Spacer()
                
                Text("Make your choice!")
                    .font(.title)
                HStack {
                    ForEach(0..<3) { selection in
                        Button {
                            // Do something
                        } label: {
                            Text(moves[selection])
                        }
                        .font(.system(size: 75))
                    }
                }
                
                Spacer()
                
                Text("Score ???")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
            }
        }
    }
}

#Preview {
    ContentView()
}
