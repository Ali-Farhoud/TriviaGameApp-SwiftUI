//
//  Answer.swift
//  TriviaGame
//
//  Created by msg on 06/03/2023.
//

import Foundation

struct Answer: Identifiable{
    var id=UUID()
    var text:AttributedString
    var isCorrect: Bool
    
}
