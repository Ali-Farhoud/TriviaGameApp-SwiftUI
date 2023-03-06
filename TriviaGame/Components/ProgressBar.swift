//
//  ProgressBar.swift
//  TriviaGame
//
//  Created by msg on 06/03/2023.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle().frame(maxWidth:350,maxHeight: 4)
                .foregroundColor(Color(hue:1.0,saturation: 0.0,brightness: 0.564,opacity:0.327))
                .cornerRadius(10)
            Rectangle().frame(maxWidth:progress,maxHeight: 4)
                .foregroundColor(.purple).cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
