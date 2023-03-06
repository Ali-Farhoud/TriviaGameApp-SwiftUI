//
//  Extensions.swift
//  TriviaGame
//
//  Created by msg on 06/03/2023.
//

import Foundation
import SwiftUI

extension Text{
    func lilacTitle() -> some View{
        self.font(.title)
        .fontWeight(.heavy)
        .foregroundColor(.purple)
    }
}

extension VStack{
    func beigeScreenFrame()->some View{
        self.padding()
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            
            .background(Color(red: 245/255, green: 245/255, blue: 220/255))
    }
}
