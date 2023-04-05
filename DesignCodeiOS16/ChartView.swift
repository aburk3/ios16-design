//
//  ChartView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 4/5/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Day", "Jun 1"), y: .value("Value", 50))
                .cornerRadius(10)
            BarMark(x: .value("Day", "Jun 2"), y: .value("Value", 30))
                .cornerRadius(10)
            BarMark(x: .value("Day", "Jun 3"), y: .value("Value", 20))
                .cornerRadius(10)
        }
        .foregroundStyle(.linearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom))
        .frame(height: 300)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
