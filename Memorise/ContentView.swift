//
//  ContentView.swift
//  Memorise
//
//  Created by Mark Blinder on 10/25/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🎃", "👻", "💀", "🧛"]
    var body: some View {
        HStack {
            CardView(isFaceUp: true, content: emojis[0])
            CardView(isFaceUp: true, content: emojis[1])
            CardView(isFaceUp: false, content: emojis[2])
            CardView(isFaceUp: false, content: emojis[3])
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct CardView: View {
    @State var isFaceUp : Bool = false
    var content: String
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                shape.fill(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            else {
                shape.fill(.red)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
