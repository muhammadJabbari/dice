//
//  ContentView.swift
//  Dicee
//
//  Created by Mohammad Jabbari on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    @State var image1 = "dice1"
    @State var image2 = "dice2"
    
    var body: some View {
        
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("DiceeLogo")
                Spacer()
                HStack{
                    Spacer()
                    Image(image1)
                    Spacer()
                    Image(image2)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                Spacer()
            }
        }
    }
    func deal(){
        let image1Value = Int.random(in: 1...6)
        image1 = "dice" + String(image1Value)
        
        let image2Value = Int.random(in: 1...6)
        image2 = "dice" + String(image2Value)
    }
}

#Preview {
    ContentView()
}
