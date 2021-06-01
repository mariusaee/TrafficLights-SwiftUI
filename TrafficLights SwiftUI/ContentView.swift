//
//  ContentView.swift
//  TrafficLights SwiftUI
//
//  Created by Marius Malyshev on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                Light(color: .red)
                Light(color: .yellow)
                Light(color: .green)
                
                Spacer()
                
                NextButton()
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)

    }
}
