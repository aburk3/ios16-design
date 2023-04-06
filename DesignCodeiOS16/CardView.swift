//
//  CardView.swift
//  DesignCodeiOS16
//
//  Created by Austin Burke on 4/6/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
//        HexagonShape()
//            .stroke()
//            .frame(width: 44, height: 44)
        Image(systemName: "aspectratio")
            .frame(width: 44, height: 44)
            .background(HexagonShape().stroke())
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

//  https://svg-to-swiftui.quassum.com/
// Hexegon outline
struct HexagonShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.03619*width, y: 0.50745*height))
        path.addCurve(to: CGPoint(x: 0.03981*width, y: 0.39785*height), control1: CGPoint(x: 0.03619*width, y: 0.45037*height), control2: CGPoint(x: 0.03622*width, y: 0.42307*height))
        path.addCurve(to: CGPoint(x: 0.17499*width, y: 0.16371*height), control1: CGPoint(x: 0.05299*width, y: 0.30529*height), control2: CGPoint(x: 0.10142*width, y: 0.22141*height))
        path.addCurve(to: CGPoint(x: 0.26809*width, y: 0.10578*height), control1: CGPoint(x: 0.19503*width, y: 0.148*height), control2: CGPoint(x: 0.21866*width, y: 0.13432*height))
        path.addCurve(to: CGPoint(x: 0.36482*width, y: 0.05411*height), control1: CGPoint(x: 0.31753*width, y: 0.07724*height), control2: CGPoint(x: 0.34119*width, y: 0.06361*height))
        path.addCurve(to: CGPoint(x: 0.63518*width, y: 0.05411*height), control1: CGPoint(x: 0.45157*width, y: 0.01925*height), control2: CGPoint(x: 0.54843*width, y: 0.01925*height))
        path.addCurve(to: CGPoint(x: 0.73191*width, y: 0.10578*height), control1: CGPoint(x: 0.65881*width, y: 0.06361*height), control2: CGPoint(x: 0.68247*width, y: 0.07724*height))
        path.addCurve(to: CGPoint(x: 0.82501*width, y: 0.16371*height), control1: CGPoint(x: 0.78134*width, y: 0.13432*height), control2: CGPoint(x: 0.80497*width, y: 0.148*height))
        path.addCurve(to: CGPoint(x: 0.96019*width, y: 0.39785*height), control1: CGPoint(x: 0.89858*width, y: 0.22141*height), control2: CGPoint(x: 0.94701*width, y: 0.30529*height))
        path.addCurve(to: CGPoint(x: 0.96381*width, y: 0.50745*height), control1: CGPoint(x: 0.96379*width, y: 0.42307*height), control2: CGPoint(x: 0.96381*width, y: 0.45037*height))
        path.addCurve(to: CGPoint(x: 0.96019*width, y: 0.61706*height), control1: CGPoint(x: 0.96381*width, y: 0.56453*height), control2: CGPoint(x: 0.96379*width, y: 0.59184*height))
        path.addCurve(to: CGPoint(x: 0.82501*width, y: 0.85119*height), control1: CGPoint(x: 0.94701*width, y: 0.70961*height), control2: CGPoint(x: 0.89858*width, y: 0.7935*height))
        path.addCurve(to: CGPoint(x: 0.73191*width, y: 0.90913*height), control1: CGPoint(x: 0.80497*width, y: 0.86691*height), control2: CGPoint(x: 0.78134*width, y: 0.88059*height))
        path.addCurve(to: CGPoint(x: 0.63518*width, y: 0.96079*height), control1: CGPoint(x: 0.68247*width, y: 0.93767*height), control2: CGPoint(x: 0.65881*width, y: 0.95129*height))
        path.addCurve(to: CGPoint(x: 0.36482*width, y: 0.96079*height), control1: CGPoint(x: 0.54843*width, y: 0.99565*height), control2: CGPoint(x: 0.45157*width, y: 0.99565*height))
        path.addCurve(to: CGPoint(x: 0.26809*width, y: 0.90913*height), control1: CGPoint(x: 0.34119*width, y: 0.95129*height), control2: CGPoint(x: 0.31753*width, y: 0.93767*height))
        path.addCurve(to: CGPoint(x: 0.17499*width, y: 0.85119*height), control1: CGPoint(x: 0.21866*width, y: 0.88059*height), control2: CGPoint(x: 0.19503*width, y: 0.86691*height))
        path.addCurve(to: CGPoint(x: 0.03981*width, y: 0.61706*height), control1: CGPoint(x: 0.10142*width, y: 0.7935*height), control2: CGPoint(x: 0.05299*width, y: 0.70961*height))
        path.addCurve(to: CGPoint(x: 0.03619*width, y: 0.50745*height), control1: CGPoint(x: 0.03622*width, y: 0.59184*height), control2: CGPoint(x: 0.03619*width, y: 0.56453*height))
        path.closeSubpath()
        return path
    }
}

//  https://svg-to-swiftui.quassum.com/
// Hexegon outline with icon
//struct HexagonShape: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        let width = rect.size.width
//        let height = rect.size.height
//        path.move(to: CGPoint(x: 0.28917*width, y: 0.13847*height))
//        path.addCurve(to: CGPoint(x: 0.37711*width, y: 0.09254*height), control1: CGPoint(x: 0.33411*width, y: 0.1131*height), control2: CGPoint(x: 0.35563*width, y: 0.10099*height))
//        path.addCurve(to: CGPoint(x: 0.62289*width, y: 0.09254*height), control1: CGPoint(x: 0.45597*width, y: 0.06155*height), control2: CGPoint(x: 0.54403*width, y: 0.06155*height))
//        path.addCurve(to: CGPoint(x: 0.71082*width, y: 0.13847*height), control1: CGPoint(x: 0.64438*width, y: 0.10099*height), control2: CGPoint(x: 0.66589*width, y: 0.1131*height))
//        path.addCurve(to: CGPoint(x: 0.79547*width, y: 0.18997*height), control1: CGPoint(x: 0.75576*width, y: 0.16384*height), control2: CGPoint(x: 0.77725*width, y: 0.176*height))
//        path.addCurve(to: CGPoint(x: 0.91836*width, y: 0.39809*height), control1: CGPoint(x: 0.86235*width, y: 0.24125*height), control2: CGPoint(x: 0.90637*width, y: 0.31582*height))
//        path.addCurve(to: CGPoint(x: 0.92165*width, y: 0.49551*height), control1: CGPoint(x: 0.92162*width, y: 0.4205*height), control2: CGPoint(x: 0.92165*width, y: 0.44478*height))
//        path.addCurve(to: CGPoint(x: 0.91836*width, y: 0.59294*height), control1: CGPoint(x: 0.92165*width, y: 0.54625*height), control2: CGPoint(x: 0.92162*width, y: 0.57052*height))
//        path.addCurve(to: CGPoint(x: 0.79547*width, y: 0.80106*height), control1: CGPoint(x: 0.90637*width, y: 0.67521*height), control2: CGPoint(x: 0.86235*width, y: 0.74978*height))
//        path.addCurve(to: CGPoint(x: 0.71082*width, y: 0.85256*height), control1: CGPoint(x: 0.77725*width, y: 0.81503*height), control2: CGPoint(x: 0.75576*width, y: 0.82719*height))
//        path.addCurve(to: CGPoint(x: 0.62289*width, y: 0.89848*height), control1: CGPoint(x: 0.66589*width, y: 0.87793*height), control2: CGPoint(x: 0.64438*width, y: 0.89004*height))
//        path.addCurve(to: CGPoint(x: 0.37711*width, y: 0.89848*height), control1: CGPoint(x: 0.54403*width, y: 0.92947*height), control2: CGPoint(x: 0.45597*width, y: 0.92947*height))
//        path.addCurve(to: CGPoint(x: 0.28917*width, y: 0.85256*height), control1: CGPoint(x: 0.35563*width, y: 0.89004*height), control2: CGPoint(x: 0.33411*width, y: 0.87793*height))
//        path.addCurve(to: CGPoint(x: 0.20453*width, y: 0.80106*height), control1: CGPoint(x: 0.24424*width, y: 0.82719*height), control2: CGPoint(x: 0.22275*width, y: 0.81503*height))
//        path.addCurve(to: CGPoint(x: 0.08164*width, y: 0.59294*height), control1: CGPoint(x: 0.13765*width, y: 0.74978*height), control2: CGPoint(x: 0.09363*width, y: 0.67521*height))
//        path.addCurve(to: CGPoint(x: 0.07835*width, y: 0.49551*height), control1: CGPoint(x: 0.07838*width, y: 0.57052*height), control2: CGPoint(x: 0.07835*width, y: 0.54625*height))
//        path.addCurve(to: CGPoint(x: 0.08164*width, y: 0.39809*height), control1: CGPoint(x: 0.07835*width, y: 0.44478*height), control2: CGPoint(x: 0.07838*width, y: 0.4205*height))
//        path.addCurve(to: CGPoint(x: 0.20453*width, y: 0.18997*height), control1: CGPoint(x: 0.09363*width, y: 0.31582*height), control2: CGPoint(x: 0.13765*width, y: 0.24125*height))
//        path.addCurve(to: CGPoint(x: 0.28917*width, y: 0.13847*height), control1: CGPoint(x: 0.22275*width, y: 0.176*height), control2: CGPoint(x: 0.24424*width, y: 0.16384*height))
//        path.closeSubpath()
//        path.move(to: CGPoint(x: 0.61847*width, y: 0.65264*height))
//        path.addLine(to: CGPoint(x: 0.61847*width, y: 0.47353*height))
//        path.addCurve(to: CGPoint(x: 0.60659*width, y: 0.4407*height), control1: CGPoint(x: 0.61847*width, y: 0.45926*height), control2: CGPoint(x: 0.61451*width, y: 0.44832*height))
//        path.addCurve(to: CGPoint(x: 0.57244*width, y: 0.42926*height), control1: CGPoint(x: 0.59867*width, y: 0.43307*height), control2: CGPoint(x: 0.58728*width, y: 0.42926*height))
//        path.addLine(to: CGPoint(x: 0.29135*width, y: 0.42926*height))
//        path.addLine(to: CGPoint(x: 0.29135*width, y: 0.44973*height))
//        path.addLine(to: CGPoint(x: 0.57112*width, y: 0.44973*height))
//        path.addCurve(to: CGPoint(x: 0.59037*width, y: 0.45674*height), control1: CGPoint(x: 0.57942*width, y: 0.44973*height), control2: CGPoint(x: 0.58584*width, y: 0.45207*height))
//        path.addCurve(to: CGPoint(x: 0.59735*width, y: 0.47574*height), control1: CGPoint(x: 0.59502*width, y: 0.46129*height), control2: CGPoint(x: 0.59735*width, y: 0.46763*height))
//        path.addLine(to: CGPoint(x: 0.59735*width, y: 0.65264*height))
//        path.addLine(to: CGPoint(x: 0.61847*width, y: 0.65264*height))
//        path.closeSubpath()
//        path.move(to: CGPoint(x: 0.51811*width, y: 0.43627*height))
//        path.addLine(to: CGPoint(x: 0.49698*width, y: 0.43627*height))
//        path.addLine(to: CGPoint(x: 0.49698*width, y: 0.65264*height))
//        path.addLine(to: CGPoint(x: 0.51811*width, y: 0.65264*height))
//        path.addLine(to: CGPoint(x: 0.51811*width, y: 0.43627*height))
//        path.closeSubpath()
//        path.move(to: CGPoint(x: 0.33455*width, y: 0.6626*height))
//        path.addLine(to: CGPoint(x: 0.66526*width, y: 0.6626*height))
//        path.addCurve(to: CGPoint(x: 0.70695*width, y: 0.64895*height), control1: CGPoint(x: 0.68375*width, y: 0.6626*height), control2: CGPoint(x: 0.69765*width, y: 0.65805*height))
//        path.addCurve(to: CGPoint(x: 0.72091*width, y: 0.60892*height), control1: CGPoint(x: 0.71626*width, y: 0.63998*height), control2: CGPoint(x: 0.72091*width, y: 0.62663*height))
//        path.addLine(to: CGPoint(x: 0.72091*width, y: 0.38259*height))
//        path.addCurve(to: CGPoint(x: 0.70695*width, y: 0.34256*height), control1: CGPoint(x: 0.72091*width, y: 0.365*height), control2: CGPoint(x: 0.71626*width, y: 0.35166*height))
//        path.addCurve(to: CGPoint(x: 0.66526*width, y: 0.32873*height), control1: CGPoint(x: 0.69765*width, y: 0.33334*height), control2: CGPoint(x: 0.68375*width, y: 0.32873*height))
//        path.addLine(to: CGPoint(x: 0.33455*width, y: 0.32873*height))
//        path.addCurve(to: CGPoint(x: 0.29305*width, y: 0.34238*height), control1: CGPoint(x: 0.31619*width, y: 0.32873*height), control2: CGPoint(x: 0.30235*width, y: 0.33328*height))
//        path.addCurve(to: CGPoint(x: 0.27909*width, y: 0.38259*height), control1: CGPoint(x: 0.28374*width, y: 0.35136*height), control2: CGPoint(x: 0.27909*width, y: 0.36476*height))
//        path.addLine(to: CGPoint(x: 0.27909*width, y: 0.60892*height))
//        path.addCurve(to: CGPoint(x: 0.29305*width, y: 0.64895*height), control1: CGPoint(x: 0.27909*width, y: 0.62663*height), control2: CGPoint(x: 0.28374*width, y: 0.63998*height))
//        path.addCurve(to: CGPoint(x: 0.33455*width, y: 0.6626*height), control1: CGPoint(x: 0.30235*width, y: 0.65805*height), control2: CGPoint(x: 0.31619*width, y: 0.6626*height))
//        path.closeSubpath()
//        path.move(to: CGPoint(x: 0.33512*width, y: 0.63991*height))
//        path.addCurve(to: CGPoint(x: 0.31059*width, y: 0.6318*height), control1: CGPoint(x: 0.32442*width, y: 0.63991*height), control2: CGPoint(x: 0.31625*width, y: 0.63721*height))
//        path.addCurve(to: CGPoint(x: 0.30229*width, y: 0.60763*height), control1: CGPoint(x: 0.30506*width, y: 0.62639*height), control2: CGPoint(x: 0.30229*width, y: 0.61833*height))
//        path.addLine(to: CGPoint(x: 0.30229*width, y: 0.38388*height))
//        path.addCurve(to: CGPoint(x: 0.31059*width, y: 0.35972*height), control1: CGPoint(x: 0.30229*width, y: 0.37318*height), control2: CGPoint(x: 0.30506*width, y: 0.36513*height))
//        path.addCurve(to: CGPoint(x: 0.33512*width, y: 0.35142*height), control1: CGPoint(x: 0.31625*width, y: 0.35418*height), control2: CGPoint(x: 0.32442*width, y: 0.35142*height))
//        path.addLine(to: CGPoint(x: 0.66488*width, y: 0.35142*height))
//        path.addCurve(to: CGPoint(x: 0.68903*width, y: 0.35972*height), control1: CGPoint(x: 0.67532*width, y: 0.35142*height), control2: CGPoint(x: 0.68337*width, y: 0.35418*height))
//        path.addCurve(to: CGPoint(x: 0.69752*width, y: 0.38388*height), control1: CGPoint(x: 0.69469*width, y: 0.36513*height), control2: CGPoint(x: 0.69752*width, y: 0.37318*height))
//        path.addLine(to: CGPoint(x: 0.69752*width, y: 0.60763*height))
//        path.addCurve(to: CGPoint(x: 0.68903*width, y: 0.6318*height), control1: CGPoint(x: 0.69752*width, y: 0.61833*height), control2: CGPoint(x: 0.69469*width, y: 0.62639*height))
//        path.addCurve(to: CGPoint(x: 0.66488*width, y: 0.63991*height), control1: CGPoint(x: 0.68337*width, y: 0.63721*height), control2: CGPoint(x: 0.67532*width, y: 0.63991*height))
//        path.addLine(to: CGPoint(x: 0.33512*width, y: 0.63991*height))
//        path.closeSubpath()
//        return path
//    }
//}
