//
//  MenuView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 4/4/23.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedMenu: Menu
    
    var body: some View {
        List(navigationItems) { item in
            Button {
                selectedMenu = item.menu
            } label: {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                .padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedMenu: .constant(.compass))
    }
}
