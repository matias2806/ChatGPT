//
//  ContentView.swift
//  ChatGPT
//
//  Created by Matias Palmieri on 06/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var responseGPT = ""
    @State private var questionForGPT = ""
    
    func askToChatGPT() {
        responseGPT = questionForGPT
    }
    
    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.76)
                .ignoresSafeArea()
            VStack {
                Text("Consultas para ChatGPT")
                    .font(.title)
                Image("chatGPT")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 80)
                TextField("Ingrese su pregunta para chatGPT", text: $questionForGPT)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("Analizar", action: {
                    askToChatGPT()
                })
                .buttonStyle(BorderedButtonStyle())
                .padding()
                Text("\(responseGPT)").padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
