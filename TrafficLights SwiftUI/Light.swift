//
//  Light.swift
//  TrafficLights SwiftUI
//
//  Created by Marius Malyshev on 01.06.2021.
//

import SwiftUI

struct Light: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(color: .red)
    }
}
