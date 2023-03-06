//
//  ContentView.swift
//  TriviaGame
//
//  Created by msg on 06/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager=TriviaManager()
    var body: some View {
        NavigationView {
            VStack(spacing:40){
                VStack(spacing:20){
                    Text("Trivia Game")
                        .lilacTitle()
                        
                    Text("Are you ready to test your trivia skills?")
                        .foregroundColor(.purple)
                }
                NavigationLink{
                    TriviaView().environmentObject(triviaManager)
                }label:{
                    PrimaryButton(text:"Let's Go")
                }
                
            }.beigeScreenFrame()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
