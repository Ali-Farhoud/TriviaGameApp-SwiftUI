//
//  TriviaView.swift
//  TriviaGame
//
//  Created by msg on 06/03/2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        
        if triviaManager.reachedEnd{
        VStack(spacing: 20){
            Text("Trivia Game").lilacTitle()
            Text("Congratulions, you completed the game 🥳")
            Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
            Button{
                Task.init{
                    await triviaManager.fetchTrivia()
                }
            }label: {
                PrimaryButton(text: "Play Again")
            }
            }.beigeScreenFrame().foregroundColor(.purple)
        }else{
            QuestionView().environmentObject(triviaManager)
        }
        
                    
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView().environmentObject(TriviaManager())
    }
}
