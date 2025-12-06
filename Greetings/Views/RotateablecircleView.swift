//
//  RotateablecircleView.swift
//  Greetings
//
//  Created by Neevesh Jain on 01/12/25.
//

import SwiftUI

struct RotateablecircleView: View {
    @State private var isRotated: Bool = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var isIpad : Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var lineWidthDynamic : CGFloat {
        isIpad ? 30.0 : 15.0
    }
    var diameterDynamic : CGFloat {
        isIpad ? 140.0 : 70.0
    }
    
    let lineWidth = 15.0
    let diameter = 70.0
    var angle : Angle {
        isRotated ? Angle.zero : .degrees(360)
    }
    
    var angularGradient : AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.red, .blue, .orange,.green]), center: .center, angle: .zero)
    }
    var body: some View {
        Circle()
            .strokeBorder(angularGradient,lineWidth: lineWidthDynamic)
            .rotationEffect(angle)
            .frame(width: diameterDynamic,height: diameterDynamic)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotateablecircleView()
}
