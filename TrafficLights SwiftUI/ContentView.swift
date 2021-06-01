//
//  ContentView.swift
//  TrafficLights SwiftUI
//
//  Created by Marius Malyshev on 01.06.2021.
//

import SwiftUI

private let lightIsOn = 1.0
private let lightIsOff = 0.3

private enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redLightOpacity = lightIsOff
    @State private var yellowLightOpacity = lightIsOff
    @State private var greenLightOpacity = lightIsOff
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        let redLight = Color(red: 220/255, green:0 , blue: 0, opacity: redLightOpacity)
        let yellowLight = Color(red: 220/255, green: 220/255, blue: 0, opacity: yellowLightOpacity)
        let greenLight = Color(red: 0, green: 220/255, blue: 0, opacity: greenLightOpacity)
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Light(color: redLight)
                Light(color: yellowLight)
                Light(color: greenLight)
                
                Spacer()
                
                Button(action: { switchLight() }) {
                    NextButton()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func switchLight() {
        switch currentLight {
        case .red:
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
            currentLight = CurrentLight.yellow
        case .yellow:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
            currentLight = CurrentLight.green
        case .green:
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
            currentLight = CurrentLight.red
        }
    }
}
