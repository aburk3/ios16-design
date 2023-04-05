//
//  ContentView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var selectedMenu: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState,
                transaction in
                gestureState = currentState
            }
            .onEnded { value in
                showMenu = true
            }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
            switch selectedMenu {
            case .compass:
                MessageView()
            case .card:
                Text("Card")
            case .charts:
                Text("Charts")
            case .radial:
                Text("Radial")
            case .halfsheet:
                Text("Half Sheet")
            case .gooey:
                Text("Gooey")
            case .actionbutton: 
                Text("Action Button")
            }
        }
        .sheet(isPresented: $showMenu) {
            MenuView(selectedMenu: $selectedMenu)
                .presentationDetents([.medium, .large])
        }
        .gesture(longPress)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
