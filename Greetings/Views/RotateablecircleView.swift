//
//  RotateablecircleView.swift
//  Greetings
//
//  Created by Neevesh Jain on 01/12/25.
//

import SwiftUI

struct RotateablecircleView: View {
    @State private var isRotated: Bool = false
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
            .strokeBorder(angularGradient,lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter,height: diameter)
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
