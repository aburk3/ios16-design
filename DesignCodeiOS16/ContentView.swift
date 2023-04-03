//
//  ContentView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: 0.2)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
                .fontWeight(.thin)
            Text("Switching Apps".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            Button {
                // Action
            } label: {
                Text("Got it")
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    .cornerRadius(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .foregroundStyle(.linearGradient(colors:
                                [.white.opacity(0.5), .clear,
                                 .white.opacity(0.5), .clear],
                                 startPoint: .topLeading, endPoint:
                                 .bottomTrailing))
                    )
                    
            }
            .accentColor(.primary)
            .shadow(radius: 10)
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke()
                .foregroundStyle(.linearGradient(colors:
                    [.white.opacity(0.5), .clear,
                     .white.opacity(0.5), .clear],
                     startPoint: .topLeading, endPoint:
                     .bottomTrailing))
        )
        .shadow(color: .black.opacity(0.3), radius: 20, y: 20)
        .frame(maxWidth: 500)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Image("Wallpaper 2"))

    }
}
