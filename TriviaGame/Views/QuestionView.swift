//
//  QuestionView.swift
//  TriviaGame
//
//  Created by msg on 06/03/2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack(spacing:40){
            HStack{
                Text("Trivia Game").lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)").foregroundColor(.purple).fontWeight(.heavy)
            }
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing:20 ){
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                ForEach(triviaManager.answerChoices){answer in AnswerRow(answer: answer).environmentObject(triviaManager)}
               
                
            }
            Button{
                triviaManager.goToNextQuestion()
            }label: {
                PrimaryButton(text:"Next", background:triviaManager.answerSelected ? .purple : .gray)
            }
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
        }.beigeScreenFrame().navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView().environmentObject(TriviaManager())
    }
}
