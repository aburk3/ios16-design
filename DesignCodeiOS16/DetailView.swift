//
//  DetailView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 4/6/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            ViewThatFits {
                HStack(alignment: .top, spacing:
                    20) {
                    VStack {
                        ChartView()
                        GridView()
                    }
                    VStack {
                        CardView()
                        GridView()
                    }
                    .frame(width: 400)
                    
                }
                VStack {
                    ChartView()
                    CardView()
                    GridView()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
