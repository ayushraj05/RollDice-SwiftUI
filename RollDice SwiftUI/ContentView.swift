//
//  ContentView.swift
//  RollDice SwiftUI
//
//  Created by Ayush Rajpal on 15/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
//                    .padding(100)
                    Spacer()
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(Color.red)
                        .cornerRadius(10)
                })
//                Button(action: {
//                    
//                }) {
//                    Text("Roll")
//                        .font(.system(size: 50))
//                        .fontWeight(.heavy)
//                        .foregroundColor(.white)
//                        .padding(.horizontal)
//                }
//                .background(Color.red)
            }
        }
    }
}
    
#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
//            .frame(width: 100, height: 100)
            .padding()
    }
}
