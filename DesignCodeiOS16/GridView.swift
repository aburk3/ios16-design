//
//  GridView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 4/5/23.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 12,
             verticalSpacing: 12) {
            GridRow {
                Text("Votes")
                    .gridColumnAlignment(.trailing)
                    .gridCellColumns(2)
                Text("Percentage")

            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow {
                Text("4")
                ProgressView(value: 0.1)
                    .frame(maxWidth: 250)
                Image(systemName: "star")
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.2)
                    .frame(maxWidth: 250)
                Image(systemName: "star")
            }
        }
        .padding(20)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
