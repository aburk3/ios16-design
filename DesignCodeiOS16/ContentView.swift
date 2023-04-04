//
//  ContentView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var body: some View {
        Button("Show Menu") {
            showMenu = true
        }
        .sheet(isPresented: $showMenu) {
            NavigationStackView()
                .presentationDetents([.medium, .large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
