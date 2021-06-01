//
//  NextButton.swift
//  TrafficLights SwiftUI
//
//  Created by Marius Malyshev on 01.06.2021.
//

import SwiftUI

struct NextButton: View {
    var body: some View {
        
        Button(action: { changeColor() }) {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            
            ZStack {
                shape
                    .frame(width: 200, height: 65)
                    .overlay(shape.stroke(Color.white, lineWidth: 4))
                Text("NEXT")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
    
    private func changeColor() {
        print("+")
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton()
    }
}
