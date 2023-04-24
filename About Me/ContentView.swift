//
//  ContentView.swift
//  About Me
//
//  Created by Irene Liao on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = "me";
    @State private var txt = "Hi, I'm Irene :)"

    var body: some View {
        VStack() {
            Text("Hello!")
                .font(.title)
                .padding(.bottom)
            Text("My name is Irene Liao")
                .font(.title3)
                .multilineTextAlignment(.center)
            Text("and I want to conquer all the different fonts of skating")
                .multilineTextAlignment(.center)
            Text("Click below to find out what I'm talking about!")
                .padding(.top)
            Button("Click me!") {
                self.imageName = "hobbies"
                self.txt = "❄️ skating, 🌎 skating, 💧 skating"
            }
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.763, saturation: 0.314, brightness: 0.951))
                .padding(.bottom)
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top)
            Text(txt)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
