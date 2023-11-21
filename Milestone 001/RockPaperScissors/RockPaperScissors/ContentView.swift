//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Steven McWee on 20/11/2023.
//

import SwiftUI

struct ContentView: View {
    let moves = ["🪨", "📃", "✂️"]
    let winningMoves = ["📃", "✂️", "🪨"]
    
    @State private var move = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
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
                Text(shouldWin ? "WIN!" : "LOSE!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                
                Spacer()
                
                Text("Make your choice!")
                    .font(.title)
                HStack(spacing: 30) {
                    ForEach(0..<3) { selection in
                        Button {
                            buttonTapped(selection)
                        } label: {
                            Text(moves[selection])
                        }
                        .font(.system(size: 75))
                        .buttonStyle(.bordered)
                    }
                }
                
                Spacer()
                
                Text("Score: \(score)")
                    .font(.title.bold())
            }
        }
        .alert("Game over", isPresented: $endOfGame) {
            Button("Start again", action: resetGame)
        } message: {
            Text("Your final score is \(score)")
        }
    }
    
    func buttonTapped(_ selection: Int) {
        var result: Bool
        
        if moves[selection] == moves[move] {
            result = false
        } else if shouldWin && moves[selection] == winningMoves[move] {
            result = true
        } else if !shouldWin && moves[selection] != winningMoves[move] {
            result = true
        } else {
            result = false
        }
        
        determineResult(result)
    }
    
    func determineResult(_ result: Bool) {
        questionsAsked += 1
        
        if result == true {
            score += 1
        }
        
        askQuestion()
    }
    
    func askQuestion() {
        if questionsAsked == 10 {
            endOfGame = true
        } else {
            move = Int.random(in: 0...2)
            shouldWin = Bool.random()
        }
    }
    
    func resetGame() {
        score = 0
        questionsAsked = 0
        move = Int.random(in: 0...2)
        shouldWin = Bool.random()
    }
}

#Preview {
    ContentView()
}
